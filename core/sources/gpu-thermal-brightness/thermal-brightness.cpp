#include <iostream>
#include <nvml.h>
using namespace std;

int main() {
    // Initialize NVML library
    nvmlReturn_t result = nvmlInit();
    if (NVML_SUCCESS != result) {
        cerr << "Failed to initialize NVML: " << nvmlErrorString(result) << endl;
        return 1;
    }

    // Get the handle for the first GPU
    nvmlDevice_t device;
    result = nvmlDeviceGetHandleByIndex(0, &device);
    if (NVML_SUCCESS != result) {
        cerr << "Failed to get handle for GPU: " << nvmlErrorString(result) << endl;
        nvmlShutdown();
        return 1;
    }

    // Get the temperature of the GPU
    unsigned int temperature;
    result = nvmlDeviceGetTemperature(device, NVML_TEMPERATURE_GPU, &temperature);
    if (NVML_SUCCESS != result) {
        cerr << "Failed to get temperature of GPU: " << nvmlErrorString(result) << endl;
        nvmlShutdown();
        return 1;
    }

    // Compute the GPU logo brightness
    int brightness = temperature*100/127;

    // Set the GPU logo brightness
    result = nvmlDeviceSetGpuLogoBrightness(device, brightness);
    if (NVML_SUCCESS != result) {
        cerr << "Failed to set GPU logo brightness: " << nvmlErrorString(result) << endl;
        nvmlShutdown();
        return 1;
    }

    // Shutdown NVML library
    nvmlShutdown();

    return 0;
}


// g++ -o thermal-brightness /home/luxcium/ahmyzsh/core/sources/gpu-thermal-brightness/thermal-brightness.cpp -I/home/luxcium/mystic-mercury/include/nvml.h -lnvidia-ml

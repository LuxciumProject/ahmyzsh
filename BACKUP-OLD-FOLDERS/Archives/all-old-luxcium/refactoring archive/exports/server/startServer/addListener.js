"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var safe_1 = tslib_1.__importDefault(require("colors/safe"));
var getServerConfigs_1 = require("../utils/getServerConfigs/getServerConfigs");
var addListener = (function () { return function (app) { return function (db) {
    console.log('> ');
    console.log("> Start Server => Listener:");
    console.log('> ');
    var _a = getServerConfigs_1.getServerConfigs(), PORT = _a.PORT, NODE_ENV = _a.NODE_ENV;
    app.listen(PORT, function () {
        console.log(">    " + safe_1.default.green("adding listener: " + safe_1.default.magenta(' ')));
        console.log(">    " + safe_1.default.green("curently server is set to: " + safe_1.default.magenta("" + NODE_ENV)));
        console.log(">    " + safe_1.default.green("server is listening on port: " + safe_1.default.magenta("" + PORT)));
    });
    return app;
}; }; })();
exports.addListener = addListener;
exports.default = addListener;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWRkTGlzdGVuZXIuanMiLCJzb3VyY2VSb290IjoiLi9zZXJ2ZXIvIiwic291cmNlcyI6WyJzdGFydFNlcnZlci9hZGRMaXN0ZW5lci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7QUFHQSw2REFBaUM7QUFHakMsK0VBQThFO0FBRTlFLElBQU0sV0FBVyxHQUFHLENBQUMsY0FBTSxPQUFBLFVBQUMsR0FBb0IsSUFBSyxPQUFBLFVBQUMsRUFBTztJQUUzRCxPQUFPLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2xCLE9BQU8sQ0FBQyxHQUFHLENBQUMsNkJBQTZCLENBQUMsQ0FBQztJQUMzQyxPQUFPLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBRVosSUFBQSwwQ0FBdUMsRUFBckMsY0FBSSxFQUFFLHNCQUErQixDQUFDO0lBRTlDLEdBQUcsQ0FBQyxNQUFNLENBQUMsSUFBSSxFQUFFO1FBQ2YsT0FBTyxDQUFDLEdBQUcsQ0FBQyxVQUFRLGNBQU0sQ0FBQyxLQUFLLENBQUMsc0JBQW9CLGNBQU0sQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFHLENBQUcsQ0FBQyxDQUFDO1FBQy9FLE9BQU8sQ0FBQyxHQUFHLENBQUMsVUFBUSxjQUFNLENBQUMsS0FBSyxDQUFDLGdDQUE4QixjQUFNLENBQUMsT0FBTyxDQUFDLEtBQUcsUUFBVSxDQUFHLENBQUcsQ0FBQyxDQUFDO1FBQ25HLE9BQU8sQ0FBQyxHQUFHLENBQUMsVUFBUSxjQUFNLENBQUMsS0FBSyxDQUFDLGtDQUFnQyxjQUFNLENBQUMsT0FBTyxDQUFDLEtBQUcsSUFBTSxDQUFHLENBQUcsQ0FBQyxDQUFDO0lBQ25HLENBQUMsQ0FBQyxDQUFDO0lBRUgsT0FBTyxHQUFHLENBQUM7QUFFYixDQUFDLEVBaEJvRCxDQWdCcEQsRUFoQjBCLENBZ0IxQixDQUFDLEVBQUUsQ0FBQztBQUVJLGtDQUFXO0FBQ3BCLGtCQUFlLFdBQVcsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKiBAZm9ybWF0ICovXG5cbmltcG9ydCBleHByZXNzIGZyb20gJ2V4cHJlc3MnO1xuaW1wb3J0IGNvbG9ycyBmcm9tICdjb2xvcnMvc2FmZSc7XG4vLyBpbXBvcnQgeyBtb25nb2RiIH0gZnJvbSAnLi9kYXRhQ29ubmVjdGlvbic7XG5cbmltcG9ydCB7IGdldFNlcnZlckNvbmZpZ3MgfSBmcm9tICcuLi91dGlscy9nZXRTZXJ2ZXJDb25maWdzL2dldFNlcnZlckNvbmZpZ3MnO1xuXG5jb25zdCBhZGRMaXN0ZW5lciA9ICgoKSA9PiAoYXBwOiBleHByZXNzLkV4cHJlc3MpID0+IChkYjogYW55IC8qbW9uZ29kYi5EYiovKSA9PiB7XG4gIC8vXG4gIGNvbnNvbGUubG9nKCc+ICcpO1xuICBjb25zb2xlLmxvZyhgPiBTdGFydCBTZXJ2ZXIgPT4gTGlzdGVuZXI6YCk7XG4gIGNvbnNvbGUubG9nKCc+ICcpO1xuICAvL1xuICBjb25zdCB7IFBPUlQsIE5PREVfRU5WIH0gPSBnZXRTZXJ2ZXJDb25maWdzKCk7XG4gIC8vXG4gIGFwcC5saXN0ZW4oUE9SVCwgKCkgPT4ge1xuICAgIGNvbnNvbGUubG9nKGA+ICAgICR7Y29sb3JzLmdyZWVuKGBhZGRpbmcgbGlzdGVuZXI6ICR7Y29sb3JzLm1hZ2VudGEoJyAnKX1gKX1gKTtcbiAgICBjb25zb2xlLmxvZyhgPiAgICAke2NvbG9ycy5ncmVlbihgY3VyZW50bHkgc2VydmVyIGlzIHNldCB0bzogJHtjb2xvcnMubWFnZW50YShgJHtOT0RFX0VOVn1gKX1gKX1gKTtcbiAgICBjb25zb2xlLmxvZyhgPiAgICAke2NvbG9ycy5ncmVlbihgc2VydmVyIGlzIGxpc3RlbmluZyBvbiBwb3J0OiAke2NvbG9ycy5tYWdlbnRhKGAke1BPUlR9YCl9YCl9YCk7XG4gIH0pO1xuICAvL1xuICByZXR1cm4gYXBwO1xuICAvL1xufSkoKTtcblxuZXhwb3J0IHsgYWRkTGlzdGVuZXIgfTtcbmV4cG9ydCBkZWZhdWx0IGFkZExpc3RlbmVyO1xuIl19
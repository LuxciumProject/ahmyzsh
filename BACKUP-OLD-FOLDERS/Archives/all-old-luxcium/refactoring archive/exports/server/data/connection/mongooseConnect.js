"use strict";
var _this = this;
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var mongoose_1 = tslib_1.__importDefault(require("mongoose"));
exports.mongoose = mongoose_1.default;
var TEST_URI = 'mongodb+srv://luxcium0:rubmy3-Qadruv-xyxkik@cluster0-8w34w.mongodb.net/test?retryWrites=true';
var mongooseConnect = (function () { return function (URI) {
    if (URI === void 0) { URI = TEST_URI; }
    return function (callback) { return tslib_1.__awaiter(_this, void 0, void 0, function () {
        var result, error_1;
        return tslib_1.__generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 3, , 4]);
                    return [4, mongoose_1.default.connect(URI)];
                case 1:
                    result = _a.sent();
                    return [4, callback(result)];
                case 2: return [2, _a.sent()];
                case 3:
                    error_1 = _a.sent();
                    console.log('Error in mongooseConnect');
                    return [3, 4];
                case 4: return [2];
            }
        });
    }); };
}; })();
exports.mongooseConnect = mongooseConnect;
exports.default = mongooseConnect;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibW9uZ29vc2VDb25uZWN0LmpzIiwic291cmNlUm9vdCI6Ii4vc2VydmVyLyIsInNvdXJjZXMiOlsiZGF0YS9jb25uZWN0aW9uL21vbmdvb3NlQ29ubmVjdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBRUEsaUJBY0E7OztBQWRBLDhEQUFnQztBQVlOLG1CQVpuQixrQkFBUSxDQVltQjtBQVZsQyxJQUFNLFFBQVEsR0FBRyw4RkFBOEYsQ0FBQztBQUVoSCxJQUFNLGVBQWUsR0FBRyxDQUFDLGNBQU0sT0FBQSxVQUFDLEdBQXNCO0lBQXRCLG9CQUFBLEVBQUEsY0FBc0I7SUFBSyxPQUFBLFVBQU8sUUFBMEM7Ozs7OztvQkFFekYsV0FBTSxrQkFBUSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsRUFBQTs7b0JBQXBDLE1BQU0sR0FBRyxTQUEyQjtvQkFDbkMsV0FBTSxRQUFRLENBQUMsTUFBTSxDQUFDLEVBQUE7d0JBQTdCLFdBQU8sU0FBc0IsRUFBQzs7O29CQUU5QixPQUFPLENBQUMsR0FBRyxDQUFDLDBCQUEwQixDQUFDLENBQUM7Ozs7O1NBRTNDO0FBUDBELENBTzFELEVBUDhCLENBTzlCLENBQUMsRUFBRSxDQUFDO0FBQ0ksMENBQWU7QUFDeEIsa0JBQWUsZUFBZSxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqIEBmb3JtYXQgKi9cblxuaW1wb3J0IG1vbmdvb3NlIGZyb20gJ21vbmdvb3NlJztcblxuY29uc3QgVEVTVF9VUkkgPSAnbW9uZ29kYitzcnY6Ly9sdXhjaXVtMDpydWJteTMtUWFkcnV2LXh5eGtpa0BjbHVzdGVyMC04dzM0dy5tb25nb2RiLm5ldC90ZXN0P3JldHJ5V3JpdGVzPXRydWUnO1xuXG5jb25zdCBtb25nb29zZUNvbm5lY3QgPSAoKCkgPT4gKFVSSTogc3RyaW5nID0gVEVTVF9VUkkpID0+IGFzeW5jIChjYWxsYmFjazogKHJlc3VsdDogdHlwZW9mIG1vbmdvb3NlKSA9PiBhbnkpID0+IHtcbiAgdHJ5IHtcbiAgICBjb25zdCByZXN1bHQgPSBhd2FpdCBtb25nb29zZS5jb25uZWN0KFVSSSk7XG4gICAgcmV0dXJuIGF3YWl0IGNhbGxiYWNrKHJlc3VsdCk7XG4gIH0gY2F0Y2ggKGVycm9yKSB7XG4gICAgY29uc29sZS5sb2coJ0Vycm9yIGluIG1vbmdvb3NlQ29ubmVjdCcpO1xuICB9XG59KSgpO1xuZXhwb3J0IHsgbW9uZ29vc2VDb25uZWN0LCBtb25nb29zZSB9O1xuZXhwb3J0IGRlZmF1bHQgbW9uZ29vc2VDb25uZWN0O1xuIl19
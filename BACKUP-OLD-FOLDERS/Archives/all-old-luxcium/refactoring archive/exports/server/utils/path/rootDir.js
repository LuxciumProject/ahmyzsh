"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var path_1 = tslib_1.__importDefault(require("path"));
var rootDir = (function () { return function () {
    if (process.mainModule) {
        return path_1.default.dirname(process.mainModule.filename);
    }
    else {
        throw new Error('"process.mainModule" not found or undefined');
    }
}; })();
exports.rootDir = rootDir;
exports.default = rootDir;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicm9vdERpci5qcyIsInNvdXJjZVJvb3QiOiIuL3NlcnZlci8iLCJzb3VyY2VzIjpbInV0aWxzL3BhdGgvcm9vdERpci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7QUFFQSxzREFBd0I7QUFFeEIsSUFBTSxPQUFPLEdBQUcsQ0FBQyxjQUFNLE9BQUE7SUFDckIsSUFBSSxPQUFPLENBQUMsVUFBVSxFQUFFO1FBQ3RCLE9BQU8sY0FBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQ2xEO1NBQU07UUFDTCxNQUFNLElBQUksS0FBSyxDQUFDLDZDQUE2QyxDQUFDLENBQUM7S0FDaEU7QUFDSCxDQUFDLEVBTnNCLENBTXRCLENBQUMsRUFBRSxDQUFDO0FBQ0ksMEJBQU87QUFDaEIsa0JBQWUsT0FBTyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqIEBmb3JtYXQgKi9cblxuaW1wb3J0IHBhdGggZnJvbSAncGF0aCc7XG5cbmNvbnN0IHJvb3REaXIgPSAoKCkgPT4gKCkgPT4ge1xuICBpZiAocHJvY2Vzcy5tYWluTW9kdWxlKSB7XG4gICAgcmV0dXJuIHBhdGguZGlybmFtZShwcm9jZXNzLm1haW5Nb2R1bGUuZmlsZW5hbWUpO1xuICB9IGVsc2Uge1xuICAgIHRocm93IG5ldyBFcnJvcignXCJwcm9jZXNzLm1haW5Nb2R1bGVcIiBub3QgZm91bmQgb3IgdW5kZWZpbmVkJyk7XG4gIH1cbn0pKCk7XG5leHBvcnQgeyByb290RGlyIH07XG5leHBvcnQgZGVmYXVsdCByb290RGlyO1xuIl19
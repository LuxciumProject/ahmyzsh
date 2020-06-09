"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var express_1 = tslib_1.__importDefault(require("express"));
var authRouter = (function () {
    return function authRouter() {
        var router = express_1.default.Router();
        router.get('/', function (req, res) { return res.json({ msg: '/api/auth' }); });
        return router;
    };
})();
exports.authRouter = authRouter;
exports.default = authRouter;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiLi9zZXJ2ZXIvIiwic291cmNlcyI6WyJyb3V0ZXMvYXBpL2F1dGhlbnRpY2F0aW9uL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7OztBQUNBLDREQUE4QjtBQUU5QixJQUFNLFVBQVUsR0FBRyxDQUFDO0lBQ2xCLE9BQUEsU0FBUyxVQUFVO1FBSWpCLElBQU0sTUFBTSxHQUFHLGlCQUFPLENBQUMsTUFBTSxFQUFFLENBQUM7UUFPaEMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxHQUFHLEVBQUUsVUFBQyxHQUFHLEVBQUUsR0FBRyxJQUFLLE9BQUEsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFLEdBQUcsRUFBRSxXQUFXLEVBQUUsQ0FBQyxFQUE5QixDQUE4QixDQUFDLENBQUM7UUFJOUQsT0FBTyxNQUFNLENBQUM7SUFJaEIsQ0FBQztBQW5CRCxDQW1CQyxDQUFDLEVBQUUsQ0FBQztBQUVFLGdDQUFVO0FBRG5CLGtCQUFlLFVBQVUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKiBAZm9ybWF0ICovXG5pbXBvcnQgZXhwcmVzcyBmcm9tICdleHByZXNzJztcblxuY29uc3QgYXV0aFJvdXRlciA9ICgoKSA9PlxuICBmdW5jdGlvbiBhdXRoUm91dGVyKCkge1xuICAgIC8vXG4gICAgLy9cbiAgICAvL1xuICAgIGNvbnN0IHJvdXRlciA9IGV4cHJlc3MuUm91dGVyKCk7XG4gICAgLy9cbiAgICAvL1xuICAgIC8vXG4gICAgLy8gQHJvdXRlICAgR0VUIGFwaS91c2Vycy90ZXN0XG4gICAgLy8gQGRlc2MgICAgVGVzdHMgdXNlcnMgcm91dGVcbiAgICAvLyBAYWNjZXNzICBQdWJsaWNcbiAgICByb3V0ZXIuZ2V0KCcvJywgKHJlcSwgcmVzKSA9PiByZXMuanNvbih7IG1zZzogJy9hcGkvYXV0aCcgfSkpO1xuICAgIC8vXG4gICAgLy9cbiAgICAvL1xuICAgIHJldHVybiByb3V0ZXI7XG4gICAgLy9cbiAgICAvL1xuICAgIC8vXG4gIH0pKCk7XG5leHBvcnQgZGVmYXVsdCBhdXRoUm91dGVyO1xuZXhwb3J0IHsgYXV0aFJvdXRlciB9O1xuIl19
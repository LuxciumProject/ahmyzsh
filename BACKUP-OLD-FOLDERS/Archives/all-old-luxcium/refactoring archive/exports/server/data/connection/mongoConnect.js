"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var tslib_1 = require("tslib");
var mongodb_1 = tslib_1.__importDefault(require("mongodb"));
exports.mongodb = mongodb_1.default;
var TEST_URI = 'mongodb+srv://luxcium0:rubmy3-Qadruv-xyxkik@cluster0-8w34w.mongodb.net/test?retryWrites=true';
exports.TEST_URI = TEST_URI;
var mongoConnect = (function () {
    function class_1(URI) {
        if (URI === void 0) { URI = TEST_URI; }
        this._URI = URI;
        this._client = null;
        this._db = null;
        this._useNewUrlParser = { useNewUrlParser: true };
        this.isConnected = false;
    }
    class_1.prototype.connect = function (callback) {
        var _this = this;
        mongodb_1.default.MongoClient.connect(this._URI, this._useNewUrlParser)
            .then(function (client) {
            _this._client = client;
            _this._db = client.db();
            console.log("> CONNECTION TO \"" + _this._db.databaseName.toUpperCase() + "\" DATABASE . . . ");
            _this.isConnected = true;
            callback(_this._db);
        })
            .catch(function (err) {
            console.log(err);
        });
    };
    class_1.prototype.getDb = function () {
        if (this._db) {
            console.log("> USING \"" + this._db.databaseName.toUpperCase() + "\" DATABASE . . . ");
            return this._db;
        }
        console.error(">!!!> ERROR : \"No database found!\"");
        throw 'No database found!';
    };
    class_1.prototype.getClient = function () {
        if (this._client) {
            return this._client;
        }
        console.error(">!!!> ERROR : \"No DB client found!\"");
        throw 'No DB client found!';
    };
    return class_1;
}());
exports.mongoConnect = mongoConnect;
var MongoDB = mongodb_1.default.Db;
exports.MongoDB = MongoDB;
var MongoClient = mongodb_1.default.MongoClient;
exports.MongoClient = MongoClient;
exports.default = mongoConnect;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibW9uZ29Db25uZWN0LmpzIiwic291cmNlUm9vdCI6Ii4vc2VydmVyLyIsInNvdXJjZXMiOlsiZGF0YS9jb25uZWN0aW9uL21vbmdvQ29ubmVjdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7QUFFQSw0REFBOEI7QUE2RVAsa0JBN0VoQixpQkFBTyxDQTZFZ0I7QUEzRTlCLElBQU0sUUFBUSxHQUFHLDhGQUE4RixDQUFDO0FBMkVoRiw0QkFBUTtBQXpFeEMsSUFBTSxZQUFZO0lBZWhCLGlCQUFZLEdBQXNCO1FBQXRCLG9CQUFBLEVBQUEsY0FBc0I7UUFHaEMsSUFBSSxDQUFDLElBQUksR0FBRyxHQUFHLENBQUM7UUFDaEIsSUFBSSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDcEIsSUFBSSxDQUFDLEdBQUcsR0FBRyxJQUFJLENBQUM7UUFDaEIsSUFBSSxDQUFDLGdCQUFnQixHQUFHLEVBQUUsZUFBZSxFQUFFLElBQUksRUFBRSxDQUFDO1FBQ2xELElBQUksQ0FBQyxXQUFXLEdBQUcsS0FBSyxDQUFDO0lBRzNCLENBQUM7SUFJTSx5QkFBTyxHQUFkLFVBQWUsUUFBaUM7UUFBaEQsaUJBZ0JDO1FBZkMsaUJBQU8sQ0FBQyxXQUFXLENBQUMsT0FBTyxDQUN6QixJQUFJLENBQUMsSUFBSSxFQUNULElBQUksQ0FBQyxnQkFBZ0IsQ0FDdEI7YUFDRSxJQUFJLENBQUMsVUFBQSxNQUFNO1lBQ1YsS0FBSSxDQUFDLE9BQU8sR0FBRyxNQUFNLENBQUM7WUFDdEIsS0FBSSxDQUFDLEdBQUcsR0FBRyxNQUFNLENBQUMsRUFBRSxFQUFFLENBQUM7WUFDdkIsT0FBTyxDQUFDLEdBQUcsQ0FBQyx1QkFBb0IsS0FBSSxDQUFDLEdBQUcsQ0FBQyxZQUFZLENBQUMsV0FBVyxFQUFFLHVCQUFtQixDQUFDLENBQUM7WUFDeEYsS0FBSSxDQUFDLFdBQVcsR0FBRyxJQUFJLENBQUM7WUFDeEIsUUFBUSxDQUFDLEtBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUNyQixDQUFDLENBQUM7YUFDRCxLQUFLLENBQUMsVUFBQSxHQUFHO1lBQ1IsT0FBTyxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUVuQixDQUFDLENBQUMsQ0FBQztJQUNQLENBQUM7SUFJTSx1QkFBSyxHQUFaO1FBQ0UsSUFBSSxJQUFJLENBQUMsR0FBRyxFQUFFO1lBQ1osT0FBTyxDQUFDLEdBQUcsQ0FBQyxlQUFZLElBQUksQ0FBQyxHQUFHLENBQUMsWUFBWSxDQUFDLFdBQVcsRUFBRSx1QkFBbUIsQ0FBQyxDQUFDO1lBQ2hGLE9BQU8sSUFBSSxDQUFDLEdBQUcsQ0FBQztTQUNqQjtRQUNELE9BQU8sQ0FBQyxLQUFLLENBQUMsc0NBQW9DLENBQUMsQ0FBQztRQUNwRCxNQUFNLG9CQUFvQixDQUFDO0lBQzdCLENBQUM7SUFJTSwyQkFBUyxHQUFoQjtRQUNFLElBQUksSUFBSSxDQUFDLE9BQU8sRUFBRTtZQUNoQixPQUFPLElBQUksQ0FBQyxPQUFPLENBQUM7U0FDckI7UUFDRCxPQUFPLENBQUMsS0FBSyxDQUFDLHVDQUFxQyxDQUFDLENBQUM7UUFDckQsTUFBTSxxQkFBcUIsQ0FBQztJQUM5QixDQUFDO0lBQ0gsY0FBQztBQUFELENBQUMsQUFuRW9CLEdBbUVwQixDQUFDO0FBTU8sb0NBQVk7QUFKckIsSUFBTSxPQUFPLEdBQUcsaUJBQU8sQ0FBQyxFQUFFLENBQUM7QUFJZSwwQkFBTztBQUhqRCxJQUFNLFdBQVcsR0FBRyxpQkFBTyxDQUFDLFdBQVcsQ0FBQztBQUdXLGtDQUFXO0FBRDlELGtCQUFlLFlBQVksQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKiBAZm9ybWF0ICovXG5cbmltcG9ydCBtb25nb2RiIGZyb20gJ21vbmdvZGInO1xuXG5jb25zdCBURVNUX1VSSSA9ICdtb25nb2RiK3NydjovL2x1eGNpdW0wOnJ1Ym15My1RYWRydXYteHl4a2lrQGNsdXN0ZXIwLTh3MzR3Lm1vbmdvZGIubmV0L3Rlc3Q/cmV0cnlXcml0ZXM9dHJ1ZSc7XG5cbmNvbnN0IG1vbmdvQ29ubmVjdCA9IGNsYXNzIHtcbiAgLy9cbiAgLy9cbiAgLy9cbiAgcHVibGljIGlzQ29ubmVjdGVkOiBib29sZWFuO1xuICAvL1xuICAvL1xuICAvL1xuICBwcml2YXRlIF9kYjogbW9uZ29kYi5EYiB8IG51bGw7XG4gIHByaXZhdGUgX2NsaWVudDogbW9uZ29kYi5Nb25nb0NsaWVudCB8IG51bGw7XG4gIHByaXZhdGUgX3VzZU5ld1VybFBhcnNlcjogeyB1c2VOZXdVcmxQYXJzZXI6IHRydWUgfTtcbiAgcHJpdmF0ZSBfVVJJOiBzdHJpbmc7XG4gIC8vXG4gIC8vXG4gIC8vXG4gIGNvbnN0cnVjdG9yKFVSSTogc3RyaW5nID0gVEVTVF9VUkkpIHtcbiAgICAvL1xuICAgIC8vXG4gICAgdGhpcy5fVVJJID0gVVJJO1xuICAgIHRoaXMuX2NsaWVudCA9IG51bGw7XG4gICAgdGhpcy5fZGIgPSBudWxsO1xuICAgIHRoaXMuX3VzZU5ld1VybFBhcnNlciA9IHsgdXNlTmV3VXJsUGFyc2VyOiB0cnVlIH07XG4gICAgdGhpcy5pc0Nvbm5lY3RlZCA9IGZhbHNlO1xuICAgIC8vXG4gICAgLy9cbiAgfSAvKiBjb25zdHJ1Y3RvciBlbmQgaGVyZSAqL1xuICAvL1xuICAvL1xuICAvL1xuICBwdWJsaWMgY29ubmVjdChjYWxsYmFjazogKGRiOiBtb25nb2RiLkRiKSA9PiBhbnkpIHtcbiAgICBtb25nb2RiLk1vbmdvQ2xpZW50LmNvbm5lY3QoXG4gICAgICB0aGlzLl9VUkksXG4gICAgICB0aGlzLl91c2VOZXdVcmxQYXJzZXJcbiAgICApXG4gICAgICAudGhlbihjbGllbnQgPT4ge1xuICAgICAgICB0aGlzLl9jbGllbnQgPSBjbGllbnQ7XG4gICAgICAgIHRoaXMuX2RiID0gY2xpZW50LmRiKCk7XG4gICAgICAgIGNvbnNvbGUubG9nKGA+IENPTk5FQ1RJT04gVE8gXCIke3RoaXMuX2RiLmRhdGFiYXNlTmFtZS50b1VwcGVyQ2FzZSgpfVwiIERBVEFCQVNFIC4gLiAuIGApO1xuICAgICAgICB0aGlzLmlzQ29ubmVjdGVkID0gdHJ1ZTtcbiAgICAgICAgY2FsbGJhY2sodGhpcy5fZGIpO1xuICAgICAgfSlcbiAgICAgIC5jYXRjaChlcnIgPT4ge1xuICAgICAgICBjb25zb2xlLmxvZyhlcnIpO1xuICAgICAgICAvL3Rocm93IGVycjtcbiAgICAgIH0pO1xuICB9XG4gIC8vXG4gIC8vXG4gIC8vXG4gIHB1YmxpYyBnZXREYigpOiBtb25nb2RiLkRiIHtcbiAgICBpZiAodGhpcy5fZGIpIHtcbiAgICAgIGNvbnNvbGUubG9nKGA+IFVTSU5HIFwiJHt0aGlzLl9kYi5kYXRhYmFzZU5hbWUudG9VcHBlckNhc2UoKX1cIiBEQVRBQkFTRSAuIC4gLiBgKTtcbiAgICAgIHJldHVybiB0aGlzLl9kYjtcbiAgICB9XG4gICAgY29uc29sZS5lcnJvcihgPiEhIT4gRVJST1IgOiBcIk5vIGRhdGFiYXNlIGZvdW5kIVwiYCk7XG4gICAgdGhyb3cgJ05vIGRhdGFiYXNlIGZvdW5kISc7XG4gIH1cbiAgLy9cbiAgLy9cbiAgLy9cbiAgcHVibGljIGdldENsaWVudCgpOiBtb25nb2RiLk1vbmdvQ2xpZW50IHtcbiAgICBpZiAodGhpcy5fY2xpZW50KSB7XG4gICAgICByZXR1cm4gdGhpcy5fY2xpZW50O1xuICAgIH1cbiAgICBjb25zb2xlLmVycm9yKGA+ISEhPiBFUlJPUiA6IFwiTm8gREIgY2xpZW50IGZvdW5kIVwiYCk7XG4gICAgdGhyb3cgJ05vIERCIGNsaWVudCBmb3VuZCEnO1xuICB9XG59O1xuXG5jb25zdCBNb25nb0RCID0gbW9uZ29kYi5EYjtcbmNvbnN0IE1vbmdvQ2xpZW50ID0gbW9uZ29kYi5Nb25nb0NsaWVudDtcblxuZXhwb3J0IGRlZmF1bHQgbW9uZ29Db25uZWN0O1xuZXhwb3J0IHsgbW9uZ29Db25uZWN0LCBtb25nb2RiLCBURVNUX1VSSSwgTW9uZ29EQiwgTW9uZ29DbGllbnQgfTtcbiJdfQ==
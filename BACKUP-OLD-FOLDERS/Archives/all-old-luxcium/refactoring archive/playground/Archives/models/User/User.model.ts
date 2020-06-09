/** @format */

import mongoose, { Schema } from 'mongoose';

let UserSchema;
const UserModel = (() => {
  UserSchema = new Schema({
    username: {
      type: String,
      required: true,
    },
    email: {
      type: String,
      required: true,
    },
    password: {
      type: String,
      required: true,
    },
    avatar: {
      type: String,
      required: true,
    },
    date: {
      type: Date,
      default: Date.now,
    },
  });
  return mongoose.model('users', UserSchema);
})();

export default UserModel;
export { UserModel, UserSchema };

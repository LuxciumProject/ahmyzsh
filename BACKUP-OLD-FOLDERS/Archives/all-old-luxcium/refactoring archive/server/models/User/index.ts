/** @format */
import mongoose from 'mongoose';
const Schema = mongoose.Schema;
import { userSchema } from './userSchema';
const UserSchema = new Schema(userSchema);
export { UserSchema };

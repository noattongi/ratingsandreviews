import mongoose, {Schema} from 'mongoose';

const reviews = new Schema({
  product_id: Number,
  rating: Number,
  summary: String,
  body: String,
  recommend: Boolean,
  date: {type: Date, default: Date.now},
  name: String,
  email: String,
  photos: [photoSchema],
  characteristics: charSchema,
  reported: {type: Boolean, default: false},
  helpful: {type: Number, default: 0}
})

const photoSchema = new Schema({
  url: String
})

const charSchema = new Schema({
  characteristics: String,
  value: Number
})
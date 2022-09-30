const mongoose=require("mongoose");

const seatSchema=new mongoose.Schema(
{
  number: Number,
  auditorium:
  {
    type: mongoose.Schema.Types.ObjectId,
    ref: "auditorium"
  }
});

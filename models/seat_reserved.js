const mongoose=require("mongoose");

const seatReservedSchema=new mongoose.Schema(
{
  seat:
  {
    type: mongoose.Schema.Types.ObjectId,
    ref: "seat"
  },
  reservation:
  {
    type: mongoose.Schema.Types.ObjectId,
    ref: "reservation"
  },
  screening:
  {
    type: mongoose.Schema.Types.ObjectId,
    ref: "screening"
  }
});

module.exports=mongoose.model("seatReserved",seatReservedSchema);

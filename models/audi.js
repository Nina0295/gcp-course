const mongoose=require("mongoose");

const audiSchema=new mongoose.Schema(
{
  name: {type: String, require: true, enum: ["Cinema Hall 1","Cinema Hall 2","Cinema Hall 3"]},
  showTimes:[{
    start: Number,
    available: Boolean
  }]
});

module.exports=mongoose.model("Audi",audiSchema);

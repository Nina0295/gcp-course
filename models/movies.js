const mongoose=require("mongoose");
const movieSchema=new mongoose.Schema(
{
  name: String,
  img: String,
  ratings: String,
  director: String,
  summary: String,
  release: Number,
  duration: Number,
  screening: {
    type: Number,
    default: 0
}	
});

module.exports=mongoose.model("movies",movieSchema);

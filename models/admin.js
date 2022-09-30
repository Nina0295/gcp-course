const mongoose=require("mongoose"),
  passportLocalMongoose=require("passport-local-mongoose");

  const adminSchema=mongoose.Schema(
{
  username: String,
  password: String,
  isAdmin: {type: Boolean,default: false}
});

adminSchema.plugin(passportLocalMongoose);
module.exports=mongoose.model("Admin",adminSchema);

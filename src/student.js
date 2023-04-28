const file = require("./file");

async function exchangeImagenameWithImage(student) {
  try {
    student.image = await file.getBase64FromImageFile(student.imageName);
    await delete student.imageName;
  } catch (e) {}
  console.log("studnet", student.firstname);
  return student;
}

module.exports = {
  exchangeImagenameWithImage,
};

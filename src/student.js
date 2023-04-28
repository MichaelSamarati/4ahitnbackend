const file = require("./file");

async function exchangeImagenameWithImage(student) {
  try {
    student.image = await file.getBase64FromImageFile(student.imageName);
    delete student.imageName;
  } catch (e) {}
  console.log("studnet", student.firstname);
  return student;
}

module.exports = {
  exchangeImagenameWithImage,
};

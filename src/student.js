const file = require("./file");

// async function exchangeImagenameWithImage(student) {
//   try {
//     student.image = await file.getBase64FromImageFile(student.imageName);
//     delete student.imageName;
//   } catch (e) {}
//   return student;
// }

async function exchangeImagenameWithImage(student, imagesMap) {
  try {
    student.image = imagesMap.get(student.imageName);
    delete student.imageName;
  } catch (e) {}
  return student;
}

module.exports = {
  exchangeImagenameWithImage,
};

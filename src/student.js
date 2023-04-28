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

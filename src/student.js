const file = require("./file");

async function normalizeStudent(student) {
  student.image = await file.getBase64FromImageFile(student.imageName);
  delete student.imageName;
  return student;
}

module.exports = {
  normalizeStudent,
};

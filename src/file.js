const fs = require("fs").promises;

const IMG_DIRECTORY = "C:/code/20230402_4AHITN_Backend/backend/src/img/";

async function getBase64FromImageFile(fileName) {
  const contents = await fs.readFile(IMG_DIRECTORY + fileName, {
    encoding: "base64",
  });
  return contents;
}

module.exports = {
  getBase64FromImageFile,
};

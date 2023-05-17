async function exchangeImagenameWithImage(person, imagesMap) {
  try {
    person.image = imagesMap.get(person.imageName);
    delete person.imageName;
  } catch (e) {}
  return person;
}

module.exports = {
  exchangeImagenameWithImage,
};

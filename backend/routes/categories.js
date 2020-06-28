const express = require("express");
const router = express.Router();
const { database } = require("../config/helpers");

router.get("/all-categories", (req, res) => {
  database
    .table("categories")
    .withFields(["id", "title"])
    .getAll()
    .then((list) => {
      if (list) {
        res.json({ count: list.length, categories: list });
      } else {
        res.json({
          message: `No categories found`,
        });
      }
    })
    .catch((error) => {
      res.json({ message: error });
    });
});

module.exports = router;

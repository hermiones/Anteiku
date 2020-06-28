const express = require("express");
const router = express.Router();
const { database } = require("../config/helpers");

router.get("/all-varieties", (req, res) => {
  database
    .table("varieties")
    .withFields(["id", "title"])
    .getAll()
    .then((list) => {
      if (list) {
        res.json({ count: list.length, varieties: list });
      } else {
        res.json({
          message: `No varieties found`,
        });
      }
    })
    .catch((error) => {
      res.json({ message: error });
    });
});

module.exports = router;

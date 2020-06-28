const express = require("express");
const router = express.Router();
const { database } = require("../config/helpers");
const utils = require("../config/utils");
const { escape } = require("mysqli");

/* GET ALL PRODUCTS */
router.get("/", function (req, res) {
  // Sending Page Query Parameter is mandatory http://localhost:3636/api/products?page=1
  let page =
      req.query.page !== undefined && req.query.page !== 0 ? req.query.page : 1;
  const limit =
      req.query.limit !== undefined && req.query.limit !== 0
          ? req.query.limit
          : 10; // set limit of items per page
  let startValue;
  let endValue;
  if (page > 0) {
    startValue = page * limit - limit; // 0, 10, 20, 30
    endValue = page * limit; // 10, 20, 30, 40
  } else {
    startValue = 0;
    endValue = 10;
  }
  database
      .table("products as p")
      .join([
        {
          table: "categories as c",
          on: `c.id = p.cat_id`,
        },
      ])
      .withFields([
        "c.title as category",
        "p.title as name",
        "p.price",
        "p.quantity",
        "p.description",
        "p.image",
        "p.id",
      ])
      .slice(startValue, endValue)
      .sort({ id: 1 })
      .getAll()
      .then((prods) => {
        if (prods.length > 0) {
          res.status(200).json({
            count: prods.length,
            products: prods,
          });
        } else {
          res.json({ message: "No products found" });
        }
      })
      .catch((err) => console.log(err));
});
router.get("/search", function (req, res) {
  // don't forget to add: alter table products add fulltext (title, description)

  let searchTerm = req.query.term;
  if(typeof searchTerm != "string" || searchTerm.trim().length == 0) {
    // this can be used to send errors from the API.
  }

  searchTerm = escape(searchTerm);

  database
      .query(`
        select
           p.id as id,
           p.title as name,
           p.description as description,
           p.quantity as quantity,
           p.image as image,
           p.price as price,
           c.title as category
        from products as p
        left join categories c on p.cat_id = c.id
        where match(p.title, p.description) against(${searchTerm} in natural language mode);
      `)
      .then((prods) => {
        if (prods.length > 0) {
          res.status(200).json({
            count: prods.length,
            products: prods,
          });
        } else {
          res.json({ message: "No products found" });
        }
        console.log(prods);
      })
      .catch((err) => console.log(err));
});


/* GET ONE PRODUCT*/
router.get("/:prodId", (req, res) => {
  let productId = req.params.prodId;
  database
      .table("products as p")
      .join([
        {
          table: "categories as c",
          on: `c.id = p.cat_id`,
        },
      ])
      .withFields([
        "c.title as category",
        "p.title as name",
        "p.price",
        "p.quantity",
        "p.description",
        "p.short_desc",
        "p.add_desc",
        "p.image",
        "p.id",
        "p.images",
      ])
      .filter({ "p.id": productId })
      .get()
      .then((prod) => {
        console.log(prod);
        if (prod) {
          res.status(200).json(prod);
        } else {
          res.json({ message: `No product found with id ${productId}` });
        }
      })
      .catch((err) => res.json(err));
});

/* GET ALL PRODUCTS FROM ONE variety */
router.get("/variety/:varName", (req, res) => {
  // Sending Page Query Parameter is mandatory http://localhost:3636/api/products/category/categoryName?page=1
 

  // Get category title value from param
  const var_title = req.params.varName;

  database
      .table("products as p")
      .join([
        {
          table: "varieties as v",
          on: `v.id = p.var_id WHERE v.title LIKE '%${var_title}%'`,
        },
      ])
      .withFields([
        "v.title as variety",
        "p.title as name",
        "p.price",
        "p.quantity",
        "p.description",
        "p.image",
        "p.id",
      ])
     
      .sort({ id: 1 })
      .getAll()
      .then((prods) => {
        if (prods.length > 0) {
          res.status(200).json({
            count: prods.length,
            products: prods,
          });
        } else {
          res.json({
            message: `No products found matching the variety ${var_title}`,
          });
        }
      })
      .catch((err) => res.json(err));
});





/* GET ALL PRODUCTS FROM ONE CATEGORY */
router.get("/category/:catName", (req, res) => {
  // Sending Page Query Parameter is mandatory http://localhost:3636/api/products/category/categoryName?page=1
  let page =
      req.query.page !== undefined && req.query.page !== 0 ? req.query.page : 1; // check if page query param is defined or not
  const limit =
      req.query.limit !== undefined && req.query.limit !== 0
          ? req.query.limit
          : 10; // set limit of items per page
  let startValue;
  let endValue;
  if (page > 0) {
    startValue = page * limit - limit; // 0, 10, 20, 30
    endValue = page * limit; // 10, 20, 30, 40
  } else {
    startValue = 0;
    endValue = 10;
  }

  // Get category title value from param
  const cat_title = req.params.catName;

  database
      .table("products as p")
      .join([
        {
          table: "categories as c",
          on: `c.id = p.cat_id WHERE c.title LIKE '%${cat_title}%'`,
        },
      ])
      .withFields([
        "c.title as category",
        "p.title as name",
        "p.price",
        "p.quantity",
        "p.description",
        "p.image",
        "p.id",
      ])
      .slice(startValue, endValue)
      .sort({ id: 1 })
      .getAll()
      .then((prods) => {
        if (prods.length > 0) {
          res.status(200).json({
            count: prods.length,
            products: prods,
          });
        } else {
          res.json({
            message: `No products found matching the category ${cat_title}`,
          });
        }
      })
      .catch((err) => res.json(err));
});











//delete a product item
router.delete("/delete/:productId", (req, res) => {
  const productId = req.params.productId;
  database
      .table("products")
      .filter({ id: productId })
      .remove()
      .then((data) => {
        res.json({ message: "deleted product item " });
      })
      .catch((error) => {
        res.status(500).json({ message: "Item could not be deleted" });
      });
});

//insert a product item
router.post("/add-product", (req, res) => {
  database
      .table("products")
      .insert({
        title: req.body.title,
        image: req.body.image,
        images: req.body.images,
        description: req.body.description,
        price: req.body.price,
        quantity: req.body.quantity,
        short_desc: req.body.shortDesc,
        cat_id: req.body.catId,
        add_desc:req.body.add_desc,
        var_id:req.body.var_id
      })
      .then((logId) => {
        if (logId != null) {
          res.json({ mesage: "product has been stored" });
        } else {
          res.status(500).json({ message: "product could not be stored" });
        }
      })
      .catch((error) => res.json({ message: error }));
});

router.put("/edit/:productId", async (req, res) => {
  const tableName = "products";
  const id = req.params.productId;
  const product = await utils.retrive(tableName, id);
  if (product) {
    try {
      const updatedResult = await utils.update(tableName, id, req.body);
      res.status(200).json(updatedResult);
    } catch (error) {
      res.status(500).json(error);
    }
  }
  res.status(500).json({message: "Item could not be found"});
});

router.post("/contact", (req, res) => {
  database
      .table("contact")
      .insert({
        name: req.body.name,
        email: req.body.email
        
      })
      .then((logId) => {
        if (logId != null) {
          res.json({ mesage: "Contact has been stored" });
        } else {
          res.status(500).json({ message: "Contact could not be stored" });
        }
      })
      .catch((error) => res.json({ message: error }));
});



module.exports = router;


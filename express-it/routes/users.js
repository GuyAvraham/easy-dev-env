var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send({
    count: 200,
    page: [
      {
        name: 'Guy A'
      },
      {
        name: 'B G'
      }
    ]
  });
});

module.exports = router;

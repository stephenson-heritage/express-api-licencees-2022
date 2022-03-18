var express = require('express');
var router = express.Router();

const licenseeModel = require('../model/licensee');

/* GET home page. */
router.get('/licensee', async function(req, res, next) {

    const list = await licenseeModel.list();

    res.json(list);
});
router.get('/licensee/:year-:month-:day', async function(req, res, next) {

    const filterDate = new Date(req.params.year, req.params.month, req.params.day);
    const list = await licenseeModel.filterByDate(filterDate);

    res.json(list);
});

router.post('/licensee', async function(req, res, next) {


    //console.log(req.body);

    const result = await licenseeModel.insert(req.body);

    res.json(result);
});

module.exports = router;
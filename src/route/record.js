const { Router } = require('express')
const router = Router()

router.get('/test', async (req, res) => {
    res.json("YES")
})

exports.record = router
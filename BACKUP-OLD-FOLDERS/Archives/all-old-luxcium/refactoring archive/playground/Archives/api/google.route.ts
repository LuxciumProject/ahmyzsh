/** @format */

import express from 'express';

const googleRouter = () =>
  (function googleRoute() {
    const router = express.Router();
    router.use('/', (req, res) => res.json({msg: '/api/google, route working'}));
    return router;
  })();

export default googleRouter;

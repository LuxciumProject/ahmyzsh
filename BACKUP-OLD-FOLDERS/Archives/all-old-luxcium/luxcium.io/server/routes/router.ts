/** @format */

import express from 'express';
import { apiRouter } from './api/apiRouter';

const luxciumRouter = (() =>
  function luxciumRouter() {
    //
    //
    //
    const router = express.Router();
    //
    //
    //
    router.use('/api', apiRouter());

    //
    //
    //
    // @route   GET /luxcium
    // @desc    Tests route
    // @access  Public
    router.get('/luxcium', (req, res) => res.json({ msg: '/luxcium' }));
    //
    //
    //
    return router;
    //
    //
    //
  })();
export default luxciumRouter;
export { luxciumRouter };

/** @format */
import express from 'express';

import { authRouter } from './authentication';

const apiRouter = (() =>
  function apiRouter() {
    //
    //
    //
    const router = express.Router();
    //
    //
    router.use('/auth', authRouter());
    //
    // @route   GET api/users/test
    // @desc    Tests users route
    // @access  Public
    router.get('/', (req, res) => res.json({ msg: '/api' }));
    //
    //
    //
    return router;
    //
    //
    //
  })();
export default apiRouter;
export { apiRouter };

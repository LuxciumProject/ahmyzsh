/** @format */

import express from 'express';
// import { apiRouter } from './api/apiRouter';

const luxciumRouter = (() =>
  // tslint:disable-next-line: no-shadowed-variable
  function luxciumRouter() {
    //
    //
    //
    const router = express.Router();
    //
    //
    //
    // router.use('/api', apiRouter());

    //
    //
    //
    // @route   GET /luxcium
    // @desc    Tests route
    // @access  Public
    router.get('/luxcium', (req: any, res: any) =>
      res.json({ msg: '/luxcium' }),
    );
    router.get('/', (req: any, res: any) => res.json({ msg: '/ROOT !!!' }));

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

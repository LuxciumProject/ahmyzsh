/** @format */

import express from 'express';

const lbcRouter = () =>
  (function lbcRoute() {
    const router = express.Router();
    router.use('/', (req, res) => res.json({msg: '/api/lbc, route working'}));
    return router;
  })();

export default lbcRouter;

// import ad from '../../api/localbitcoin/advertisements';

// This route to the route handler for /api/user
// router.use('/ad/getAds', async (req, res, next) => {
//   const ads = await ad.getAds();
//   console.log(
//     await ads,
//     `router.use(
//   '/ad/getAds',
//   asyncMiddleware(async`
//   );
//   res.json(await ads);
// });
// router.use('/ad', (req, res) => res.json({msg: '/api/lbc/ad, route working'}));

/** @format */

// import more routes
import user from './user.route';
import lbc from './lbc.route';
import google from './google.route';
import express from 'express';
const expressRouter = express.Router;
const router = expressRouter();

const apiRoute = () =>
  (function route() {
    router.use('/google', google());
    router.use('/user', user());
    router.use('/lbc', lbc());

    router.use('/', (req, res) => res.json({msg: '/api, route working'}));

    return router;
  })();

export default apiRoute; //  route(express.Router());

/** @format */
import express from 'express';

const userRouter = () =>
  (function userRoute() {
    const router = express.Router();
    router.use('/', (req, res) => res.json({msg: '/api/user, route working'}));
    return router;
  })();

export default userRouter;

// import getServerUtils from '../../utils/getServerUtils';

// const serverUtils = getServerUtils();

// const User = serverUtils.models.User;
// // This execute the test route handler for /api/user/test
// router.get('/test', (req, res) => res.json({ msg: '/api/user/test, user work' }));

// // This execute the route handler for /api/user/login
// router.post('/login', (req, res) => res.json({ msg: '/api/user/login' }));

// // This execute the route handler for /api/user/register
// router.post('/register', (req, res) => {
//   User.findOne({ email: req.body.email })
//     .then(user => {
//       if (user) {
//         return res.status(400).json({ email: 'Email already exists' });
//       } else {
//         // const avatar = ''; // gravatar stuff goes here
//         // const newUser = new User({
//         //   username: req.body.username,
//         //   email: req.body.email,
//         //   avatar,
//         //   password: req.body.password,
//         // });
//       }
//       //
//     })
//     .catch(err => {
//       throw err;
//     });
// });

// // This execute the route handler for /api/user/reset
// router.post('/reset', (req, res) => res.json({ msg: '/api/user/reset' }));

// // This execute the route handler for /api/user
// router.get('/', (req, res) => res.json({ msg: '/api/user' }));

//   // return the agregated router

/*NeB_401.CORP LTEE -- © 2018  Benjamin Vincent Kasapoglu*/

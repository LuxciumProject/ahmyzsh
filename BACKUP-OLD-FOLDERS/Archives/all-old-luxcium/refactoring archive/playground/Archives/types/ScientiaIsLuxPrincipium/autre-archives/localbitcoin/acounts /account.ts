// /** @format */

// import myLBCConnector from '../myLBCConnector/myLBCConnector';
// // const log = global.console.log;

// // Account
// // Requires Authentication	Endpoint	HTTP method	Permissions	Function
// // *** /api/account_info/{username}	GET	-	Returns public user profile information.
// // ***  /api/dashboard/	GET	Read	Returns Open and active trades.
// const dashboard = () => {
//   const apiEndPoint = '/api/dashboard/';
//   return new Promise((resolve, reject) => {
//     myLBCConnector(apiEndPoint)
//       .then(value => {
//         resolve(value);
//       })
//       .catch(error => {
//         reject(error);
//       });
//   });
// };
// // ***  /api/dashboard/released/	GET	Read	Returns released trades.
// const released = () => {
//   const apiEndPoint = '/api/dashboard/released/';
//   return new Promise((resolve, reject) => {
//     myLBCConnector(apiEndPoint)
//       .then(value => {
//         resolve(value);
//       })
//       .catch(error => {
//         reject(error);
//       });
//   });
// };

// //  *** /api/dashboard/canceled/	GET	Read	Returns canceled trades.
// const canceled = () => {
//   const apiEndPoint = '/api/dashboard/released/';
//   return new Promise((resolve, reject) => {
//     myLBCConnector(apiEndPoint)
//       .then(value => {
//         resolve(value);
//       })
//       .catch(error => {
//         reject(error);
//       });
//   });
// };

// // ***  /api/dashboard/closed/	GET	Read	Returns closed trades.
// const closedAd = () => {
//   const apiEndPoint = '/api/dashboard/closed/';
//   return new Promise((resolve, reject) => {
//     myLBCConnector(apiEndPoint)
//       .then(value => {
//         resolve(value);
//       })
//       .catch(error => {
//         reject(error);
//       });
//   });
// };

// const me = {
//   dashboard,
//   released,
//   canceled,
//   closedAd,
// };

// export default me;

// /*

// Account
// Requires Authentication	Endpoint	HTTP method	Permissions	Function
// *** /api/account_info/{username}	GET	-	Returns public user profile information.
// /api/dashboard/	GET	Read	Returns Open and active trades.
// /api/dashboard/released/	GET	Read	Returns released trades.
// /api/dashboard/canceled/	GET	Read	Returns canceled trades.
// /api/dashboard/closed/	GET	Read	Returns closed trades.
// /api/logout/	POST	Read	Immediately expires the current access token.
// /api/myself/	GET	Read	Return the information of the authenticated user.
// /api/notifications/	GET	Read	Returns a list of notifications.
// /api/notifications/mark_as_read/{notification_id}/	POST	Read, Write	Marks a specific notification as read.
// /api/pincode/	POST	Read	Checks the given PIN code against the user's currently active PIN code.
// /api/real_name_verifiers/{username}/	GET	Read	Returns a list of real name verifiers of the user.
// /api/recent_messages/	GET	Read	Returns the 50 latest trade messages.

// */

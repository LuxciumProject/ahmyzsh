/** @format */

// 0.0.0-alphaZero.02

const webpack = require('webpack');
const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlBeautifyPlugin = require('html-beautify-webpack-plugin');
const OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
// const NodemonPlugin = require('nodemon-webpack-plugin');

const HSH = 8;
const base = {
  entry: [],
  resolve: { extensions: [] },
  output: { path: '', publicPath: '', filename: '' },
  devServer: { contentBase: '', hotOnly: '', port: '', publicPath: '' },
  module: { rules: [] },
  plugins: [],
  externals: {
    jquery: { commonjs: 'jquery', root: '$' },
    lodash: { commonjs: 'lodash', root: '_' },
    react: 'React',
    'react-dom': 'ReactDOM',
  },
};

base.entry.push('./src/index.tsx');
base.resolve.extensions = ['*', '.js', '.jsx', '.ts', '.tsx'];
base.output.path = path.resolve(__dirname, 'exports/client/');
base.output.publicPath = '/';
base.output.filename = `[name].[contenthash:${HSH}].js`;

base.devServer.contentBase = path.join(__dirname, '/exports/public/');
base.devServer.port = 3003;
base.devServer.publicPath = 'http://localhost:3030/';

base.plugins.push(
  new MiniCssExtractPlugin({
    filename: `[name].[contenthash:${HSH}].css`,
    chunkFilename: `[name].[contenthash:${HSH}].css`,
  })
);
base.plugins.push(new webpack.HashedModuleIdsPlugin());
base.plugins.push(
  new HtmlWebpackPlugin({
    template: './src/index.html',
    title: 'Caching',
  })
);
// base.plugins.push(
//   new NodemonPlugin({
//     verbose: true,
//     nodeArgs: [
//       '--inspect=9222',
//       '--require',
//       'ts-node/register',
//       'server/MAIN.ts',
//       // '--config',
//       // 'config/watch.nodemon.json',
//     ],
//   })
// );
const htmlBeautifyPluginOptions = { config: { html: {} } };
const htmlOptions = htmlBeautifyPluginOptions.config.html;

htmlOptions.end_with_newline = true;
htmlOptions.indent_size = 2;
htmlOptions.indent_char = ' ';
htmlOptions.indent_with_tabs = false;
htmlOptions.indent_inner_html = true;
htmlOptions.preserve_newlines = false;
htmlOptions.inline = ['p', 'i', 'b', 'span'];

base.plugins.push(new HtmlBeautifyPlugin(htmlBeautifyPluginOptions));

base.optimization = {
  runtimeChunk: 'single',
  splitChunks: {
    cacheGroups: {
      vendor: {
        test: /[\\/]node_modules[\\/]/,
        name: 'vendors',
        chunks: 'all',
      },
    },
  },
  minimizer: [],
};

// base.optimization.minimizer = [];
base.optimization.minimizer.push(new OptimizeCssAssetsPlugin({}));
base.optimization.minimizer.push(
  new UglifyJsPlugin({
    cache: true,
    parallel: true,
  })
);

const basicModulesRules = base.module.rules;
// const jsxRules = { test: /\.jsx?$/, exclude: /node_modules/, use: 'babel-loader' };
// const tsxRules = {
//   test: /\.tsx?$/,
//   exclude: /node_modules/,
//   use: ['babel-loader', 'awesome-typescript-loader'],
// };
// basicModulesRules.push(jsxRules);
// basicModulesRules.push(tsxRules);

/*
module: {
  rules: [ const jsxRules = { test: /\.jsx?$/, exclude: /node_modules/, use: "babel-loader" },
    const tsxRules = {
      test: /\.tsx?$/,
      exclude: /node_modules/,
      use: ["babel-loader", "awesome-typescript-loader" }
  ]
}
*/
const jsJsxRule = {
  test: /\.(jsx?|tsx?)$/,
  exclude: /(node_modules)/,
  loader: 'babel-loader',
  options: { presets: [] },
};

jsJsxRule.options.presets.push('@babel/preset-env');
jsJsxRule.options.presets.push('@babel/preset-react');
jsJsxRule.options.presets.push('@babel/preset-typescript');

basicModulesRules.push(jsJsxRule);

const cssRules = {
  test: /\.css$/,
  // include: path.join(__dirname, 'src'),
  use: [
    {
      loader: MiniCssExtractPlugin.loader,
      options: {},
    },
    {
      loader: 'css-loader',
      options: {
        importLoaders: 1,
        modules: true,
        localIdentName: `[name]__[local]___[hash:${HSH}]`,
      },
    },
  ],
};
basicModulesRules.push(cssRules);

const htmlRules = {
  test: /\.html$/,
  use: [],
};

const htmlUse = {
  loader: 'html-loader',
  options: {},
};

htmlUse.options.minimize = true;
htmlUse.options.removeAttributeQuotes = false;
htmlUse.options.removeComments = true;
htmlUse.options.sortClassName = true;
htmlUse.options.sortAttributes = true;
htmlUse.options.removeStyleLinkTypeAttributes = false;
htmlUse.options.removeScriptTypeAttributes = false;
htmlUse.options.preserveLineBreaks = false;
htmlUse.options.keepClosingSlash = true;

htmlRules.use.push(htmlUse);
basicModulesRules.push(htmlRules);

const imageRules = {
  test: /\.(png|svg|jpg|gif|ico)$/,
  exclude: /favicon.ico$/,
  use: [
    {
      loader: 'file-loader',
      options: {
        name: `[name].[chunkhash:${HSH}].[ext]`,
        outputPath: '../public/img/',
      },
    },
  ],
};
basicModulesRules.push(imageRules);

const faviconRule = {
  test: /favicon.ico$/,
  use: [
    {
      loader: 'file-loader',
      options: {
        name: 'favicon.ico',
        outputPath: '../public/',
      },
    },
  ],
};
basicModulesRules.push(faviconRule);

const fontRules = {
  test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
  use: [
    {
      loader: 'file-loader',
      options: {
        name: '[name].[ext]',
        outputPath: '../public/fonts/',
        publicPath: '/fonts',
      },
    },
  ],
};
basicModulesRules.push(fontRules);

module.exports = base;

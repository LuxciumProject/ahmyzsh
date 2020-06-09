/** @format */

import path from 'path';
import webpack from 'webpack';
// import fs from 'fs';
// import

const config: webpack.Configuration = {
  mode: 'development',
  optimization: {
    usedExports: true,
    splitChunks: { chunks: 'all' },
  },
  entry: './server/MAIN.ts',
  output: {
    path: path.resolve(__dirname, '..', '..', 'dist', 'server'),
    filename: 'main.js',
  },
  devtool: 'inline-source-map',

  target: 'async-node',
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        resolve: {
          extensions: ['.ts', '.js', '.json'],
        },
      },
      {
        test: /\.js$/,
        use: ['source-map-loader'],
        enforce: 'pre',
      },
    ],
  },
};

export default config;

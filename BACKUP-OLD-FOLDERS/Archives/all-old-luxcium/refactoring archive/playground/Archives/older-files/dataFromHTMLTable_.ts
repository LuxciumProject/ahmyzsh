// /** @format */

// const dataFromHTMLTable = (tableData: string) => {
//   // taking  the <table></table> ellement in full
//   // removing returns and splitinh on tHead to get the names of the coluns
//   // const tHeadDataSplit = tableData
//   //   .split('\n')
//   //   .join('')
//   //   .split('<thead>');

//   // // removing the firt ellement if it contain 'table'
//   // if (tHeadDataSplit[0].indexOf('table') !== -1) {
//   //   tHeadDataSplit.shift();
//   // }

//   // spliting  the data using the <tbody> to get 2 parts one containig the names of the columns
//   // and the other containingthe data...
//   const tBodySplit = tableData.split('<tbody>');

//   // geting the colNames and excluding the last ellement because it does not contain data
//   const colNames = tBodySplit[0].split('</th>').map(value => value.trim().substring(value.trim().indexOf('<th>') + 4));
//   const lasEllement = colNames.pop();
//   // adding back the element if it is not a element containit tags
//   if (lasEllement.indexOf('<') === -1) {
//     colNames.push(lasEllement);
//   }

//   // getting  each row of data to later grap each cell
//   // and asociate each then with a colon name in an object ...
//   const rowElements = tBodySplit[1].split('</tr>');
//   const cellsEllements = rowElements.map(row => {
//     return row
//       .split('</td>')
//       .join('')
//       .split('<td>')
//       .map((value, index, array) => {
//         if (value.indexOf('<tr>') !== -1) {
//           return null;
//         }
//         if (value.indexOf('</') !== -1) {
//           return null;
//         }
//         return value;
//       });
//   });

//   // filtering to remove null objects
//   // maping colNames with each value on each "row" of data assigning it to on object per row
//   const filtered = cellsEllements
//     .map(subArray => subArray.filter(value => value != null))
//     .filter(value => value != null);

//   // removing last because empty
//   filtered.pop();

//   // adding the values to an array of objects one per row of data
//   const finalObject = filtered.map(subArray => {
//     const myObject = {};
//     subArray.map((value, index) => {
//       myObject[colNames[index]] = value;
//     });
//     return myObject;
//   });

//   return finalObject;
// };

// export default dataFromHTMLTable;

// // const testingString = `<table class="data" id="chart_table" style="display: table;">
// //         <thead>
// //           <tr>
// //             <th>Timestamp</th><th>Open</th><th>High</th><th>Low</th><th>Close</th><th>Volume (BTC)</th><th>Volume (Currency)</th><th>Weighted Price</th>
// //           </tr>
// //         </thead><tbody>
// //         <tr><td>2018-09-03 00:00:00</td><td>7291.94</td><td>7340.08</td><td>7184</td><td>7258.99</td><td>2829.88</td><td>20542456.31</td><td>7259.13</td></tr><tr><td>2018-09-04 00:00:00</td><td>7261.29</td><td>7411.85</td><td>7231</td><td>7361</td><td>4531.15</td><td>33221323.53</td><td>7331.77</td></tr><tr><td>2018-09-05 00:00:00</td><td>7353.48</td><td>7387</td><td>6650</td><td>6679.3</td><td>12408.8</td><td>87114382.02</td><td>7020.37</td></tr><tr><td>2018-09-06 00:00:00</td><td>6671.95</td><td>6705.59</td><td>6253.29</td><td>6493.09</td><td>14674.02</td><td>94114515.67</td><td>6413.68</td></tr><tr><td>2018-09-07 00:00:00</td><td>6488.01</td><td>6525</td><td>6322</td><td>6400</td><td>6541.97</td><td>42087647</td><td>6433.48</td></tr><tr><td>2018-09-08 00:00:00</td><td>6401.01</td><td>6465.46</td><td>6113.23</td><td>6178.31</td><td>4284.19</td><td>26909063.9</td><td>6281.01</td></tr><tr><td>2018-09-09 00:00:00</td><td>6178.31</td><td>6451.51</td><td>6094.38</td><td>6236.04</td><td>4104.31</td><td>25806798.06</td><td>6287.73</td></tr><tr><td>2018-09-10 00:00:00</td><td>6238.99</td><td>6351.13</td><td>6223.9</td><td>6301.99</td><td>5371.73</td><td>33758141.37</td><td>6284.41</td></tr><tr><td>2018-09-11 00:00:00</td><td>6303.99</td><td>6405</td><td>6162.06</td><td>6279.99</td><td>7076.8</td><td>44475428.53</td><td>6284.68</td></tr><tr><td>2018-09-12 00:00:00</td><td>6274.6</td><td>6350</td><td>6192.89</td><td>6322.45</td><td>4282.16</td><td>26839702.05</td><td>6267.8</td></tr><tr><td>2018-09-13 00:00:00</td><td>6326.83</td><td>6537.46</td><td>6324.37</td><td>6485.7</td><td>6985.35</td><td>45125974.32</td><td>6460.09</td></tr><tr><td>2018-09-14 00:00:00</td><td>6482.95</td><td>6587</td><td>6384.36</td><td>6476.51</td><td>4598.02</td><td>29850883.84</td><td>6492.12</td></tr><tr><td>2018-09-15 00:00:00</td><td>6476.51</td><td>6570.1</td><td>6466.74</td><td>6520.15</td><td>1328.82</td><td>8662492.76</td><td>6518.94</td></tr><tr><td>2018-09-16 00:00:00</td><td>6521.49</td><td>6524.84</td><td>6349.47</td><td>6499.98</td><td>1098.63</td><td>7093170.71</td><td>6456.39</td></tr><tr><td>2018-09-17 00:00:00</td><td>6499.28</td><td>6530.24</td><td>6200</td><td>6254.52</td><td>4386.89</td><td>27739081.67</td><td>6323.18</td></tr><tr><td>2018-09-18 00:00:00</td><td>6251.49</td><td>6390</td><td>6226.63</td><td>6332.34</td><td>4196.47</td><td>26460916.64</td><td>6305.51</td></tr><tr><td>2018-09-19 00:00:00</td><td>6330</td><td>6510</td><td>6100</td><td>6388.4</td><td>7232.08</td><td>45772818.07</td><td>6329.13</td></tr><tr><td>2018-09-20 00:00:00</td><td>6388.4</td><td>6535.11</td><td>6333.63</td><td>6492.98</td><td>5177.65</td><td>33213278.94</td><td>6414.75</td></tr><tr><td>2018-09-21 00:00:00</td><td>6492.98</td><td>6775.34</td><td>6483.83</td><td>6749.45</td><td>8569.99</td><td>57182294.26</td><td>6672.39</td></tr><tr><td>2018-09-22 00:00:00</td><td>6748.85</td><td>6826.28</td><td>6624.79</td><td>6710.01</td><td>5491.81</td><td>36794402.76</td><td>6699.87</td></tr><tr><td>2018-09-23 00:00:00</td><td>6710.01</td><td>6774.91</td><td>6659</td><td>6702.22</td><td>3248.8</td><td>21797275</td><td>6709.32</td></tr><tr><td>2018-09-24 00:00:00</td><td>6703.37</td><td>6721.68</td><td>6550.96</td><td>6581.52</td><td>4030.73</td><td>26700208.64</td><td>6624.17</td></tr><tr><td>2018-09-25 00:00:00</td><td>6578.7</td><td>6579.59</td><td>6324.96</td><td>6428.99</td><td>8206.62</td><td>52637968.01</td><td>6414.09</td></tr><tr><td>2018-09-26 00:00:00</td><td>6428.09</td><td>6540</td><td>6379.44</td><td>6461.51</td><td>4295.93</td><td>27796306.37</td><td>6470.39</td></tr><tr><td>2018-09-27 00:00:00</td><td>6454.32</td><td>6736.85</td><td>6431.95</td><td>6681.62</td><td>5664.85</td><td>37174589.12</td><td>6562.32</td></tr><tr><td>2018-09-28 00:00:00</td><td>6684.5</td><td>6792.28</td><td>6525.67</td><td>6610.76</td><td>7642.05</td><td>50899264.34</td><td>6660.42</td></tr><tr><td>2018-09-29 00:00:00</td><td>6609.02</td><td>6609.02</td><td>6454</td><td>6579.38</td><td>3382.02</td><td>22128320.87</td><td>6542.94</td></tr><tr><td>2018-09-30 00:00:00</td><td>6574.29</td><td>6628.06</td><td>6510</td><td>6597.81</td><td>2482.7</td><td>16324644.28</td><td>6575.37</td></tr><tr><td>2018-10-01 00:00:00</td><td>6597.79</td><td>6638.15</td><td>6477.57</td><td>6571.2</td><td>4796.04</td><td>31458261.98</td><td>6559.22</td></tr><tr><td>2018-10-02 00:00:00</td><td>6569.32</td><td>6597</td><td>6447.28</td><td>6500</td><td>4116.13</td><td>26864363.52</td><td>6526.6</td></tr><tr><td>2018-10-03 00:00:00</td><td>6500</td><td>6510</td><td>6396.34</td><td>6456.77</td><td>4774.76</td><td>30760590.45</td><td>6442.33</td></tr><tr><td>2018-10-04 00:00:00</td><td>6454.81</td><td>6604.89</td><td>6450.58</td><td>6547.56</td><td>3832.7</td><td>25105506.15</td><td>6550.34</td></tr><tr><td>2018-10-05 00:00:00</td><td>6548.83</td><td>6641.35</td><td>6510</td><td>6582.12</td><td>3807.27</td><td>24952327.06</td><td>6553.86</td></tr><tr><td>2018-10-06 00:00:00</td><td>6582.11</td><td>6595.69</td><td>6526.28</td><td>6544.08</td><td>2022.78</td><td>13254229.65</td><td>6552.48</td></tr><tr><td>2018-10-07 00:00:00</td><td>6547.93</td><td>6600</td><td>6493.92</td><td>6577.63</td><td>2455.66</td><td>16093496.64</td><td>6553.64</td></tr><tr><td>2018-10-08 00:00:00</td><td>6574.15</td><td>6656.63</td><td>6541.06</td><td>6604.75</td><td>4079.04</td><td>26896727.81</td><td>6593.88</td></tr><tr><td>2018-10-09 00:00:00</td><td>6604.76</td><td>6623.14</td><td>6553.13</td><td>6588.8</td><td>2254.95</td><td>14848937.23</td><td>6585.04</td></tr><tr><td>2018-10-10 00:00:00</td><td>6588.72</td><td>6589.79</td><td>6387.91</td><td>6517.55</td><td>5177.07</td><td>33606177.89</td><td>6491.35</td></tr><tr><td>2018-10-11 00:00:00</td><td>6517.55</td><td>6520.43</td><td>6055.28</td><td>6152.76</td><td>9616.24</td><td>59646337.39</td><td>6202.67</td></tr><tr><td>2018-10-12 00:00:00</td><td>6152.76</td><td>6243.79</td><td>6109.79</td><td>6185.15</td><td>3246.38</td><td>20109494.41</td><td>6194.43</td></tr><tr><td>2018-10-13 00:00:00</td><td>6182.03</td><td>6219.77</td><td>6168.83</td><td>6199.69</td><td>1954.05</td><td>12104441.16</td><td>6194.55</td></tr><tr><td>2018-10-14 00:00:00</td><td>6201.23</td><td>6349.47</td><td>6143.08</td><td>6183</td><td>2525.74</td><td>15747443.03</td><td>6234.79</td></tr><tr><td>2018-10-15 00:00:00</td><td>6185.04</td><td>6756</td><td>6149.28</td><td>6441.74</td><td>16895.89</td><td>109101087.19</td><td>6457.26</td></tr><tr><td>2018-10-16 00:00:00</td><td>6438.2</td><td>6493.77</td><td>6386.4</td><td>6461.2</td><td>4703.09</td><td>30285390.61</td><td>6439.46</td></tr><tr><td>2018-10-17 00:00:00</td><td>6457.67</td><td>6465.39</td><td>6407.69</td><td>6437.29</td><td>2961.26</td><td>19059528.81</td><td>6436.28</td></tr><tr><td>2018-10-18 00:00:00</td><td>6440.07</td><td>6490</td><td>6350</td><td>6396.18</td><td>3823.17</td><td>24539602.73</td><td>6418.65</td></tr><tr><td>2018-10-19 00:00:00</td><td>6394.23</td><td>6412.4</td><td>6355.99</td><td>6383.46</td><td>2290.06</td><td>14619039.59</td><td>6383.7</td></tr><tr><td>2018-10-20 00:00:00</td><td>6380.47</td><td>6424.16</td><td>6363.02</td><td>6412.86</td><td>1261.98</td><td>8074213.59</td><td>6398.06</td></tr><tr><td>2018-10-21 00:00:00</td><td>6412.86</td><td>6470</td><td>6401.01</td><td>6413.38</td><td>1541.01</td><td>9913980.56</td><td>6433.42</td></tr><tr><td>2018-10-22 00:00:00</td><td>6412.62</td><td>6429.23</td><td>6372.53</td><td>6406.06</td><td>2407.54</td><td>15414714.1</td><td>6402.69</td></tr><tr><td>2018-10-23 00:00:00</td><td>6409.39</td><td>6421.58</td><td>6354.26</td><td>6393.41</td><td>2851.01</td><td>18228502.55</td><td>6393.71</td></tr><tr><td>2018-10-24 00:00:00</td><td>6396.24</td><td>6473</td><td>6393</td><td>6411.96</td><td>3535.34</td><td>22732295.2</td><td>6430.02</td></tr><tr><td>2018-10-25 00:00:00</td><td>6411.96</td><td>6422.73</td><td>6361.73</td><td>6393.53</td><td>3046.6</td><td>19490730.26</td><td>6397.53</td></tr><tr><td>2018-10-26 00:00:00</td><td>6393.38</td><td>6450.3</td><td>6377.81</td><td>6406.1</td><td>3323.83</td><td>21303202.37</td><td>6409.24</td></tr><tr><td>2018-10-27 00:00:00</td><td>6406.1</td><td>6420.01</td><td>6381.25</td><td>6407.66</td><td>890.13</td><td>5701110.62</td><td>6404.83</td></tr><tr><td>2018-10-28 00:00:00</td><td>6407.66</td><td>6420</td><td>6383</td><td>6405.57</td><td>839.3</td><td>5373482.3</td><td>6402.36</td></tr><tr><td>2018-10-29 00:00:00</td><td>6404.27</td><td>6420</td><td>6208.37</td><td>6266.52</td><td>5190.82</td><td>32694346.11</td><td>6298.49</td></tr><tr><td>2018-10-30 00:00:00</td><td>6266.47</td><td>6289</td><td>6240</td><td>6269.46</td><td>2523.58</td><td>15805196.34</td><td>6263.01</td></tr><tr><td>2018-10-31 00:00:00</td><td>6269.45</td><td>6350</td><td>6199.25</td><td>6303.27</td><td>5148.08</td><td>32332283.69</td><td>6280.45</td></tr><tr><td>2018-11-01 00:00:00</td><td>6304.5</td><td>6308.66</td><td>6288.01</td><td>6296.38</td><td>308.25</td><td>1942073.08</td><td>6300.31</td></tr></tbody>
// //       </table>`;
// // console.log(dataFromHTMLTable(testingString));

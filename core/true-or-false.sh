c_X_0() {
    echo -n 'c_X_0 '
    true
    return
}
c_X_2() {
    echo -n 'c_X_2 '
    true
    return
}
c_X_4() {
    echo -n 'c_X_4 '
    true
    return
}
c_O_1() {
    echo -n 'c_O_1 '
    false
    return 1
}
c_O_3() {
    echo -n 'c_O_3 '
    false
    return 3
}
c_O_5() {
    echo -n 'c_O_5 '
    false
    return 5
}

echo -e '\nc_X_0 && c_O_1:'
c_X_0 && c_O_1
echo -e '\nc_X_0 || c_O_1:'
c_X_0 || c_O_1
echo -e '\nc_O_3 && c_X_4:'
c_O_3 && c_X_4
echo -e '\nc_O_3 || c_X_4:'
c_O_3 || c_X_4

echo -e '\nc_X_0 && c_O_1 || c_X_2:'
c_X_0 && c_O_1 || c_X_2
echo -e '\nc_X_0 || c_O_1 || c_X_2:'
c_X_0 || c_O_1 || c_X_2
echo -e '\nc_O_3 && c_X_4 || c_X_2:'
c_O_3 && c_X_4 || c_X_2
echo -e '\nc_O_3 || c_X_4 || c_X_2:'
c_O_3 || c_X_4 || c_X_2

echo -e '\nc_X_0 && c_O_1 || c_O_5:'
c_X_0 && c_O_1 || c_O_5
echo -e '\nc_X_0 || c_O_1 || c_O_5:'
c_X_0 || c_O_1 || c_O_5
echo -e '\nc_O_3 && c_X_4 || c_O_5:'
c_O_3 && c_X_4 || c_O_5
echo -e '\nc_O_3 || c_X_4 || c_O_5:'
c_O_3 || c_X_4 || c_O_5

echo -e '\nc_X_0 && c_O_1 && c_X_2:'
c_X_0 && c_O_1 && c_X_2
echo -e '\nc_X_0 || c_O_1 && c_X_2:'
c_X_0 || c_O_1 && c_X_2
echo -e '\nc_O_3 && c_X_4 && c_X_2:'
c_O_3 && c_X_4 && c_X_2
echo -e '\nc_O_3 || c_X_4 && c_X_2:'
c_O_3 || c_X_4 && c_X_2

echo -e '\nc_X_0 && c_O_1 && c_O_5:'
c_X_0 && c_O_1 && c_O_5
echo -e '\nc_X_0 || c_O_1 && c_O_5:'
c_X_0 || c_O_1 && c_O_5
echo -e '\nc_O_3 && c_X_4 && c_O_5:'
c_O_3 && c_X_4 && c_O_5
echo -e '\nc_O_3 || c_X_4 && c_O_5:'
c_O_3 || c_X_4 && c_O_5


var variable1;
let variable2;
variable1=1;
variable2={variable1};
const object1 = {
    variable1,
    variable2,
    propertie1:100,
    function1:function(){return 'function1'},
    Constructor:function(something){this.something=something}
};

console.log(object1.variable1);
console.log(object1.variable2);
console.log(object1.propertie1);
console.log(object1.function1());

const object2 = new object1.Constructor('something');
console.log(object2.variable1);
console.log(object2.variable2.variable1);
console.log(object2.variable2.variable1);
console.log(object2.propertie1);
console.log(object2.function1());
console.log(object2.Constructor());

const object3 = new object1('something');
console.log(object3.variable1);
console.log(object3.variable2.variable1);
console.log(object3.variable2.variable1);
console.log(object3.propertie1);
console.log(object3.function1());
console.log(object3.Constructor());

export  {object1};

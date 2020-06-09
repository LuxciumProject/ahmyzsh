
import {object1} from './variable-coulors';
class Tree {
    public name:string
    constructor(name:string) {
        this.name = name;
    }
}
function treeCount(){
    return this.numberOfTree
}




const forest = {numberOfTree:100,
Tree,
treeCount
}

const aTree = new forest.Tree("Maple tree");
const treeTotal = forest.treeCount()
console.log(aTree.name)
console.log(new forest.CreateTree("Oak tree").name)
console.log(treeTotal)

export {forest,object1}
export default aTree


import React, { Component, memo }  from 'react';

// import PropTypes from 'prop-types';

class TemplateClassReact extends Component {
    constructor(props) {
        super(props);
        this.state = { date: new Date() };
    }

   public  componentDidMount() {
        // will add later
    }

    public componentWillUnmount() {
        // will add later

    }
    public render() {
        return (
            <div>
        {/* will add later*/}
            </div>
        );
    }
}

// TemplateClassReact.propTypes = {

// };

const MyComponent = memo((props) => { 
     /* render using props */

}, (prevProps, nextProps)=> {

    return prevProps === nextProps
    /*
    return true if passing nextProps to render would return
    the same result as passing prevProps to render,
    otherwise return false
    */
} ) ;
// function areEqual(prevProps, nextProps) {
    
//     return prevProps === nextProps
//     /*
//     return true if passing nextProps to render would return
//     the same result as passing prevProps to render,
//     otherwise return false
//     */
// }
// export default MyComponent, areEqua

export  {TemplateClassReact};
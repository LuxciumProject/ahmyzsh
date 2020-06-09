/** @format */
import React from 'react';

function cardContent(props) {
  return (
    <div className="row">
      <div className={`col ${props.size}`}>
        <div className={`card-panel ${props.color}`}>
          <span className="memo-text-1">
            <p className="attention">{props.title}</p>
            {props.children}
          </span>
        </div>
      </div>
    </div>
  );
}

export default cardContent;

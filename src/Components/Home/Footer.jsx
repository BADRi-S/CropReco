import React from 'react';
import './Footer.scss';
import { Link } from 'react-router-dom';

// Import the TTF font
//import researcherFont from '/home/raj/Projects/Crop/src/Fonts/researcher/ttf/researcher.ttf';

// Define a CSS class for the font
const researcherTextStyle = {
  fontFamily: 'sans-serif', // Use the imported font
  fontSize: '24px',
  textAlign: 'center',
   // Increase font weight to bold
  // You can add other CSS styles like color, etc. here
};

function Footer() {
  return (
    <div className="section footerSection">
      {/* Apply the custom font class to the <p> element */}
      <p style={researcherTextStyle}><span style={{ fontWeight: 'bold' }}></span></p>

      <div className="footerLinksDiv">
        {/* Add your footer links here */}
      </div>
    </div>
  );
}

export default Footer;


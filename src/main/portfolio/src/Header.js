import React, {useState} from 'react';
import { Link } from 'react-router-dom';


import { Button, Container, Nav, Navbar, NavDropdown } from 'react-bootstrap';

function Header({currentPage, setCurrentPage}) {


    return (
		<div className="App">

<Navbar expand="lg" className="navbar-light bg-white py-3">
    <Container className="px-5">
        <Navbar.Brand href="/" className="fw-bolder text-primary">종우의 개발 꾸러미</Navbar.Brand>
        <Navbar.Toggle data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
        </Navbar.Toggle>
        <Navbar.Collapse className="collapse navbar-collapse" id="navbarSupportedContent">
            <Nav className="ms-auto mb-2 mb-lg-0 small fw-bolder">
                <Nav.Link onClick={() => setCurrentPage('home')}>소개</Nav.Link>
                <Nav.Link onClick={() => setCurrentPage('skills')}>기술</Nav.Link>
                <Nav.Link onClick={() => setCurrentPage('history')}>걸어온 길</Nav.Link>
                <Nav.Link onClick={() => setCurrentPage('projects')}>산출물</Nav.Link>
                <Nav.Link onClick={() => setCurrentPage('extras')}>한 걸음 더</Nav.Link>
               {/* <Nav.Link href="/#/experience">활동</Nav.Link>
                 <Nav.Link href="/#/extra">한 걸음 더</Nav.Link> */}
            </Nav>
        </Navbar.Collapse>
    </Container>
</Navbar>



		</div>
    );
}

export default Header;
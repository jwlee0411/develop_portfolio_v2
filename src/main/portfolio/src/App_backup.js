import React, { Component } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Header from './Header';
import Footer from './Footer';

import Home from './Home';
import Experience from './Experience';
import Skills from './Skills';
import Projects from './Projects';
import Project1 from './Project1';
import Project2 from './Project';
import Project3 from './Project3';
import Project4 from './Project4';
import Project5 from './Project5';
import Project6 from './Project6';
import Project7 from './Project7';
import Project8 from './Project8';
import Project9 from './Project9';
import NotFound from './NotFound';

import 'bootstrap/dist/css/bootstrap.min.css';



import './App.css';

const App = () => {
	return (
		<div className='App'>
			<Router>
				<Header />
				<Routes>
					<Route path="/" element ={<Home />}></Route>
                    <Route path="/home" element ={<Home />}></Route>
                    <Route path="/experience" element ={<Experience />}></Route>
                    <Route path="/skills" element ={<Skills />}></Route>
                    <Route path="/projects" element ={<Projects />}></Route>
                    <Route path="/projects/1" element ={<Project1 />}></Route>
                    <Route path="/projects/2" element ={<Project2 />}></Route>
                    <Route path="/projects/3" element ={<Project3 />}></Route>
                    <Route path="/projects/4" element ={<Project4 />}></Route>
                    <Route path="/projects/5" element={<Project5 />}></Route>
                    <Route path="/projects/6" element={<Project6 />}></Route>
                    <Route path="/projects/7" element={<Project7 />}></Route>
                    <Route path="/projects/8" element={<Project8 />}></Route>
                    <Route path="/projects/9" element={<Project9 />}></Route>
					{/* 상단에 위치하는 라우트들의 규칙을 모두 확인, 일치하는 라우트가 없는경우 처리 */}
					<Route path="*" element={<NotFound />}></Route>
				</Routes>
                <Footer />
			</Router>
		</div>
	);
};

export default App;
import React, { useState } from 'react';
import Header from './Header';
import Footer from './Footer';

import Home from './Home';
import History from './History';
import Skills from './Skills';
import Projects from './Projects';
import Project from './Project';

import Extras from './Extras';


import 'bootstrap/dist/css/bootstrap.min.css';



import './App.css';


function App(){
    const [currentPage, setCurrentPage] = useState('home');
    const [currentProjectId, setCurrentProjectId] = useState(0);

    return (
        <div className='App'>
            <Header currentPage={currentPage} setCurrentPage={setCurrentPage}/>

            {/* 현재 페이지에 따라 컴포넌트 렌더링 */}
            {currentPage === 'home' && <Home />}
            {currentPage === 'history' && <History />}
            {currentPage === 'skills' && <Skills />}
            {currentPage === 'projects' && <Projects currentPage={currentPage} setCurrentPage={setCurrentPage} currentProjectId = {currentProjectId} setCurrentProjectId = {setCurrentProjectId} />}
            {currentPage === 'project' && <Project currentProjectId = {currentProjectId} setCurrentProjectId={setCurrentProjectId}/>}
            {currentPage === 'extras' && <Extras />}

            <Footer/>
        </div>
    );

}

export default App;
import React, {useEffect, useState} from 'react';
import {Link} from 'react-router-dom';



import { Button, Container, Row, Col, Badge } from 'react-bootstrap';

import FormatText from "./FormatText";

import axios from "axios";


const Projects = ({currentPage, setCurrentPage, currentProjectId, setCurrentProjectId}) => {
    const [project, setProjects] = useState([]);


    useEffect(() => {
        axios.get('/api/projects')
            .then(response => {
                setProjects(response.data);
            })
            .catch(error => {
                console.error(error);
            });
    }, []);

    let displayedYears = [];

	return (


  <section className="py-5">
  <div className="container px-2 mb-2">
    <div className="text-center mb-5">
      <h1 className="display-5 fw-bolder mb-0">
        <span className="text-gradient d-inline">산출물</span>
      </h1>
    </div>

    <div className="row gx-5 justify-content-center">
        {project.map((project, index) => {
            // 이미 표시된 연도인지 확인합니다.
            const isNewYear = !displayedYears.includes(project.year);
            if (isNewYear) {
                // 로컬 변수를 업데이트합니다.
                displayedYears.push(project.year);
            }


            return (
        <>
        {isNewYear && (
           <div className="d-flex align-items-center justify-content-between mb-4">
            <h2 className="text-primary fw-bolder mb-0">{project.year}</h2>

                            </div>

            )}
      <div className="col-10">
              <div className="card overflow-hidden shadow rounded-4 border-0 mb-5 text-start">
                  <div className="card-body p-0">
                      <div className="row align-items-center" id="align_left">
                          <div className="col-md-4">
                              <img className="img-fluid" src={`/image/project_${project.id}.png`} alt="..."/>
                          </div>
                          <div className="col-md-8 p-5">
                              {project.tags.split('&').map((tag, index) => (
                                  <>
                                  <Badge key={index} bg="gradient-primary-to-secondary" mb={4} className="text-white mr-3">
                                      <div># { tag.trim() }</div>
                                  </Badge>
                                      &nbsp;&nbsp;&nbsp;
                                  </>
                              ))}
                              <p/>
                              <h2 className="fw-bolder">{project.title}</h2>
                              {project.duration}<br/><br/>
                              <p>
                                  <FormatText text={project.description}/>
                              </p>

                              <div
                                  className="d-grid gap-1 d-sm-flex justify-content-sm-center justify-content-xxl-start mb-3">

                                  <Button variant="outline-dark" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                          href={project.github_link} target="_blank"
                                          rel="noopener noreferrer">
                                      Github
                                  </Button>

                                  {/* button_description이 null이 아닐 때만 버튼을 렌더링합니다. */}
                                  {project.button_description && (
                                      <Button variant="outline-primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                              href={project.button_link} target="_blank" rel="noopener noreferrer">
                                          {project.button_description}
                                      </Button>
                                  )}


                                  <Button variant="primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                          onClick={() =>{
                                              setCurrentPage('project');
                                              setCurrentProjectId(project.id);
                                  }}>
                                      자세히
                                  </Button>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>





      </div>
        </>
        );
})}


    </div>







      
      
  </div>
</section>



	);
};

export default Projects;
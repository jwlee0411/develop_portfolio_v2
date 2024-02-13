import React, {useEffect, useState} from 'react';
import Carousel from 'react-bootstrap/Carousel';
import { Button, Container, Row, Col, Badge } from 'react-bootstrap';
import axios from "axios";
import FormatText from "./FormatText";


const Project = ({currentProjectId, setCurrentProjectId}) => {
  const [showCarousel, setShowCarousel] = useState(true);
  const [activeIndex, setActiveIndex] = useState(0);
  const [project, setProjects] = useState([]);

  const handleSelect = (selectedIndex, e) => {
    setActiveIndex(selectedIndex);
  };

  const toggleCarousel = () => {
    setShowCarousel(!showCarousel);
  };
    
  const numSlides = 2;



    useEffect(() => {
        axios.get(`/api/projects/id/${currentProjectId}`)
            .then(response => {
                setProjects(response.data);
            })
            .catch(error => {
                console.error(error);
            });
    }, []);


  return (

    <section className="py-5">
        {project.map(project => (
      <div className="container px-5 mb-5">
        <div className="text-center mb-5">
          <h1 className="display-5 fw-bolder mb-0">
            <span className="text-gradient d-inline">{project.title}</span>
          </h1>
            <br/>
            <div><FormatText text={project.duration_plus}/></div>
        </div>

        <div className="d-flex align-items-center justify-content-between mb-4">
          <h2 className="text-primary fw-bolder mb-0">
            미리보기 
          </h2>
        </div>

   
          <div className="carousel-container">
              <Carousel slide activeIndex={activeIndex} onSelect={handleSelect} data-bs-theme="dark">
                  {Array.from({ length: `${project.imgs}` }, (_, index) => `/image/${project.id}/${project.id}_${index + 1}.png`).map((imgPath, index) => (
                      <Carousel.Item key={index}>
                          <img src={imgPath} className="img-fluid" alt={`Slide ${index + 1}`} onError={(e) => e.target.style.display = 'none'} />
                      </Carousel.Item>
                  ))}
              </Carousel>

           
          </div>
   
          
          <br/><br/>


          {project.text_1 && (
              <>
                  <div className="d-flex align-items-center justify-content-between mb-4">
                      <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
                          요약
                      </h2>

                  </div>


                  <div className="text-start">
                      <FormatText text={project.text_1}/>
                  </div>
                  <br/><br/>
              </>
          )}



          {project.specs && (
              <>
             <div className="d-flex align-items-center justify-content-between mb-4">
          <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
            사용 기술
          </h2>
        
        </div>


             <div className="mb-0">

            <div className="row row-cols-1 row-cols-md-4 mb-4">

                {project.specs.split('&').map((tag, index) => (
                    <>

                        <div className="col mb-3 mb-md-4" key={index}>
                            <div className="d-flex align-items-center bg-light rounded-4 p-3 h-100">{tag.trim()}</div>
                        </div>
                    </>
                ))}



                 
            </div>
            
                   
                 
                 
          </div>
                 
               <br/><br/>

              </>
            )}



          {project.text_2 && (
              <>
                  <div className="d-flex align-items-center justify-content-between mb-4">
                      <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
                          개발 배경
                      </h2>

                  </div>


                  <div className="text-start">
                      <FormatText text={project.text_2}/>
                  </div>
                  <br/><br/>
              </>
          )}



          {project.text_3 && (
              <>
                  <div className="d-flex align-items-center justify-content-between mb-4">
                      <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
                          주요 기능
                      </h2>

                  </div>


                  <div className="text-start">
                      <FormatText text={project.text_3}/>
                  </div>
                  <br/><br/>
              </>
          )}


          {project.text_4 && (
              <>
                  <div className="d-flex align-items-center justify-content-between mb-4">
                      <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
                          역할
                      </h2>

                  </div>


                  <div className="text-start">
                      <FormatText text={project.text_4}/>
                  </div>
                  <br/><br/>
              </>
          )}

          {project.text_5 && (
              <>
                  <div className="d-flex align-items-center justify-content-between mb-4">
                      <h2 className="text-primary fw-bolder mb-0" onClick={toggleCarousel}>
                          의미
                      </h2>

                  </div>


                  <div className="text-start">
                      <FormatText text={project.text_5}/>
                  </div>
                  <br/><br/>
              </>
          )}






      </div>
        ))}
    </section>
  );
};

export default Project;

import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Skills = () => {
  const [frontEndSkills, setFrontEndSkills] = useState([]);
  const [backEndSkills, setBackEndSkills] = useState([]);
  const [applicationSkills, setApplicationSkills] = useState([]);

  // Front-End 스킬 데이터를 가져오는 useEffect
  useEffect(() => {
    axios.get('/api/skillsdata/Front-End')
        .then(response => {
          setFrontEndSkills(response.data);
        })
        .catch(error => {
          console.error(error);
        });
  }, []);

  // Front-End 스킬 데이터를 가져오는 useEffect
  useEffect(() => {
    axios.get('/api/skillsdata/Back-End')
        .then(response => {
          setBackEndSkills(response.data);
        })
        .catch(error => {
          console.error(error);
        });
  }, []);


  // Application 스킬 데이터를 가져오는 useEffect
  useEffect(() => {
    axios.get('/api/skillsdata/Application')
        .then(response => {
          setApplicationSkills(response.data);
        })
        .catch(error => {
          console.error(error);
        });
  }, []);

  return (
      <>
        <div className="container px-5 my-5">
          <div className="text-center mb-5">
            <h1 className="display-5 fw-bolder mb-0"><span className="text-gradient d-inline">기술</span></h1>
          </div>
          <div className="row gx-5 justify-content-center">
            <div className="col-lg-11 col-xl-9 col-xxl-8">
              <section>
                {/* Front-End 스킬 세트 */}
                <div className="card shadow border-0 rounded-4 mb-5">
                  <div className="card-body p-5">
                    <div className="d-flex align-items-center mb-4">
                      <div className="feature bg-primary bg-gradient text-white rounded-3 me-3">
                        <i className="bi bi-code-slash"></i>
                      </div>
                      <h3 className="fw-bolder mb-0"><span className="text-gradient d-inline">Front-End</span></h3>
                    </div>
                    <div className="row row-cols-1 row-cols-md-3 mb-4">
                      {frontEndSkills.map(skill => (
                          <div key={skill.id} className="col mb-4 mb-md-4">
                            <div className="d-flex align-items-center bg-light rounded-4 p-3 h-100">{skill.data}</div>
                          </div>
                      ))}
                    </div>
                  </div>
                </div>



                {/* Back-End 스킬 세트 */}
                <div className="card shadow border-0 rounded-4 mb-5">
                  <div className="card-body p-5">
                    <div className="d-flex align-items-center mb-4">
                      <div className="feature bg-primary bg-gradient text-white rounded-3 me-3">
                        <i className="bi bi-code-slash"></i>
                      </div>
                      <h3 className="fw-bolder mb-0"><span className="text-gradient d-inline">Back-End</span></h3>
                    </div>
                    <div className="row row-cols-1 row-cols-md-3 mb-4">
                      {/* 테스트용 */}
                      {/*<>*/}
                      {/*  {Array.from({ length: 9 }).map((_, index) => (*/}
                      {/*      <div key={index} className="col mb-4 mb-md-4">*/}
                      {/*        <div className="d-flex align-items-center bg-light rounded-4 p-3 h-100" style={{ padding: 15 }}>*/}
                      {/*          "ㅁㄴㅇㄹ"*/}
                      {/*        </div>*/}
                      {/*      </div>*/}
                      {/*  ))}*/}
                      {/*</>*/}



                      {backEndSkills.map((skill, index) => (
                          <>
                          <div key={skill.id} className="col mb-4 mb-md-4">
                            <div className="d-flex align-items-center bg-light rounded-4 p-3 h-100">{skill.data}</div>
                          </div>
                          </>
                      ))}
                    </div>
                  </div>
                </div>


                {/* Application 스킬 세트 */}
                <div className="card shadow border-0 rounded-4 mb-5">
                  <div className="card-body p-5">
                    <div className="d-flex align-items-center mb-4">
                      <div className="feature bg-primary bg-gradient text-white rounded-3 me-3">
                        <i className="bi bi-tools"></i>
                      </div>
                      <h3 className="fw-bolder mb-0"><span className="text-gradient d-inline">Application</span></h3>
                    </div>
                    <div className="row row-cols-1 row-cols-md-3 mb-4">
                      {applicationSkills.map(skill => (
                          <div key={skill.id} className="col mb-4 mb-md-4">
                            <div className="d-flex align-items-center bg-light rounded-4 p-3 h-100">{skill.data}</div>
                          </div>
                      ))}
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>
      </>
  );
};

export default Skills;
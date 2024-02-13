import React, {useEffect, useState} from 'react';
import {Link} from 'react-router-dom';



import { Button, Container, Row, Col, Badge, Card } from 'react-bootstrap';
import axios from "axios";
import FormatText from "./FormatText";


const Extras = () => {
    const [extra, setExtras] = useState([]);

    useEffect(() => {
        axios.get('/api/extras')
            .then(response => {
                setExtras(response.data);
            })
            .catch(error => {
                console.error(error);
            });
    }, []);
    
    
	return (


  <section className="py-5">
  <div className="container px-5 mb-5">
    <div className="text-center mb-5">
      <h1 className="display-5 fw-bolder mb-0">
        <span className="text-gradient d-inline">한 걸음 더</span>
      </h1>
    </div>

      <div className="row justify-content-center">
          <div className="d-flex align-items-center justify-content-between mb-4">
              <h2 className="text-primary fw-bolder mb-0">대외활동</h2>
          </div>
          <Row>
              {extra.filter(extra => extra.category === 1).map((extra, index) => (
                  <Col key={index} md={6}>
                      <Card className="overflow-hidden shadow rounded-4 border-0 mb-5">
                          <Card.Body>
                              <img className="img-fluid" src={`/image/extra/${extra.category}_${extra.sequence}.png`} alt="..."/>
                              <h3></h3>
                              <div>{extra.date}</div>
                              <Card.Title><h3 className="fw-bolder">{extra.title}</h3></Card.Title>

                              <Card.Text><FormatText text={extra.description}/></Card.Text>
                              <div
                                  className="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl mb-3">
                                  {extra.button2_description &&
                                      <Button variant="outline-primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                              href={extra.button2_link} target="_blank"
                                              rel="noopener noreferrer">
                                          {extra.button2_description}
                                      </Button>

                                  }
                                  {extra.button1_description &&
                                      <Button variant="primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                              href={extra.button1_link} target="_blank"
                                              rel="noopener noreferrer">
                                          {extra.button1_description}
                                      </Button>

                                  }
                              </div>
                          </Card.Body>
                      </Card>
                  </Col>
              ))}
          </Row>

          <div className="d-flex align-items-center justify-content-between mb-4">
              <h2 className="text-primary fw-bolder mb-0">수상</h2>
          </div>
          <Row>
              {extra.filter(extra => extra.category === 2).map((extra, index) => (
                  <Col key={index} md={4}>
                      <Card className="overflow-hidden shadow rounded-4 border-0 mb-5">
                          <Card.Body>


                              <img className="img-fluid" src={`/image/extra/${extra.category}_${extra.sequence}.png`}
                                   alt="..."/>
                              <h3></h3>
                              <div>{extra.date}</div>
                              <Card.Title><h3 className="fw-bolder">{extra.title}</h3></Card.Title>
                              <h3></h3>

                              {/*<br/>*/}
                              <Card.Text></Card.Text>
                              <div className="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl mb-3">

                              </div>
                          </Card.Body>
                      </Card>
                  </Col>
              ))}
          </Row>


          <div className="d-flex align-items-center justify-content-between mb-4">
              <h2 className="text-primary fw-bolder mb-0">기타</h2>
          </div>

          <Row>
              {extra.filter(extra => extra.category === 3).map((extra, index) => (
                  <Col key={index} md={6}>
                      <Card className="overflow-hidden shadow rounded-4 border-0 mb-5">
                          <Card.Body>
                              <img className="img-fluid" src={`/image/extra/${extra.category}_${extra.sequence}.png`} alt="..."/>
                              <h3></h3>
                              <div>{extra.date}</div>
                              <Card.Title><h3 className="fw-bolder">{extra.title}</h3></Card.Title>

                              <Card.Text><FormatText text={extra.description}/></Card.Text>
                              <div className="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl mb-3">


                                  {extra.button2_description &&
                                      <Button variant="outline-primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                              href={extra.button2_link} target="_blank"
                                              rel="noopener noreferrer">
                                          {extra.button2_description}
                                      </Button>

                                  }
                                  {extra.button1_description &&
                                      <Button variant="primary" className="btn px-3 py-3 me-sm-3 fs-6 fw-bolder"
                                              href={extra.button1_link} target="_blank"
                                              rel="noopener noreferrer">
                                          {extra.button1_description}
                                      </Button>

                                  }


                              </div>
                          </Card.Body>
                      </Card>
                  </Col>
              ))}
          </Row>

      </div>

  </div>
</section>



	);
};

export default Extras;
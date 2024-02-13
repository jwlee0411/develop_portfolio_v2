import React, {useEffect, useState} from 'react';
import {Link} from 'react-router-dom';




import { Button, Container, Row, Col, Badge } from 'react-bootstrap';
import axios from "axios";
import FormatText from "./FormatText";

const History = () => {
    const [history, setHistory] = useState([]);

    useEffect(() => {
        axios.get('/api/history')
            .then(response => {
                setHistory(response.data);
            })
            .catch(error => {
                console.error(error);
            });
    }, []);

    let displayedYears = [];

	return (
		<>
  <section py={5}>
    <Container px={5} mb={5}>
    
  <div className="text-center mb-5">
      <h1 className="display-5 fw-bolder mb-0">
        <span className="text-gradient d-inline"><br/>걸어온 길</span>
      </h1>
    </div>

     <section>
         {history.map((item, index) => {
             // 이미 표시된 연도인지 확인합니다.
             const isNewYear = !displayedYears.includes(item.year);
             if (isNewYear) {
                 // 로컬 변수를 업데이트합니다.
                 displayedYears.push(item.year);
             }

             return (
                 <>
                     {isNewYear && (

                         <>
                             {/* Empty Item(Big) */}
                             <Row className="align-items-center gx-5">
                                 <Col lg={4}>

                                     <div className="text-primary fw-bolder text-start p-4">

                                     </div>


                                 </Col>
                                 <Col lg={8}>
                                     <div className="text-start p-4">

                                     </div>
                                 </Col>

                             </Row>



                         <Row className="align-items-center">
                             <Col className="text-lg-start">
                                 <div className="d-flex align-items-center justify-content-between mb-4">
                                     <h4 className="text-secondary fw-bolder mb-0"><b>{item.year}</b></h4>
                                 </div>
                             </Col>
                         </Row>


                         </>
                     )}
                     {/* Item */}
                     <Row className="align-items-center gx-5">
                         <Col lg={4}>
                             <div className="text-primary fw-bolder text-start p-1">
                                 {item.year}.{item.month < 10 ? `0${item.month}` : item.month}
                             </div>
                         </Col>
                         <Col lg={8}>
                             <div className="text-start p-1">
                                 <FormatText text={item.data}/>
                             </div>
                         </Col>
                     </Row>

                     {/* Empty Item */}
                     <Row className="align-items-center gx-5">
                         <Col lg={4}>
                             <div className="text-primary fw-bolder text-start p-1"/>
                         </Col>
                         <Col lg={8}>
                             <div className="text-start p-1"/>
                         </Col>
                     </Row>

                 </>
             );
         })}
      </section>

     
      
    </Container>
  </section>
        
        
</>

	);
};

export default History;
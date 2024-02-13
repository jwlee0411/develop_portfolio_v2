// FormatText.js
import React from 'react';

function FormatText({ text }) {
    // 텍스트 포매팅 로직
    const formattedText = text.replace(/\*(.*?)\*/g, '<strong>$1</strong>').split('\\n').map((line, index) => (
        <React.Fragment key={index}>
            {index > 0 && <br />}
            {line.split(/(<strong>.*?<\/strong>)/g).map((part, idx) =>
                /<strong>.*<\/strong>/.test(part) ? (
                    <span key={idx} dangerouslySetInnerHTML={{ __html: part }} />
                ) : (
                    <span key={idx}>{part}</span>
                )
            )}
        </React.Fragment>
    ));

    return <div>{formattedText}</div>;
}

export default FormatText;

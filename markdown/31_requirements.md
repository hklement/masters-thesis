## Requirements {#section:requirements}

We identified a number of requirements that \tool should fulfill. Most of them also apply to large-scale programming education solutions in general.

##### Versatility

Many programming tools used in the \moocs that we regarded are designed for a single use case. In contrast, in order to fit the needs of a wide range of programming courses, our system should not be tailored to a specific set of programming languages, but it should be designed for supporting a variety of programming languages and application domains. Furthermore, teachers should be able to realize practical assignments that make use of third-party applications and libraries. As a consequence, \tool’s approach for program execution must be chosen with flexibility in mind.

Flexibility is also important in terms of assessment. According to Pieterse \cite{pieterse2013automated}, the quality of automated assessment is largely dependent on the quality of test cases used. Therefore, \tool should promote teachers’ creativity in assessment design by providing them the freedom to decide which program aspects to assess and which tools to use for this purpose. Our application should not dictate a universal assessment approach but should permit the usage of any desired tool that fits the particular use case best, such as an established testing framework or a tailor-made solution.

##### Novice-Friendliness

The large diversity of \mooc participants implies that classmates lack a common knowledge base and educational background \cite{pappano2012year}. Therefore, learners’ prior knowledge and digital literacy vary considerably. Since \tool should be usable for teaching programming to complete beginners, we want to provide learners with a homogeneous development environment that has a simple and appealing \gls{ui}, requires no prior knowledge, and supports them in many aspects of their endeavor to learn programming. \tool should also minimize the challenges that the usage of an automated assessment tool may entail \cite{pieterse2013automated}.

A very important aspect of the learning process is feedback. Feedback towards assignments allows students both to understand their mistakes and to revise their work \cite{malmi2002experiences}. Compared to a traditional learning setting, feedback quality is even more important in \moocs because communication opportunities are limited \cite{pieterse2013automated}. Since both \moocs and programming courses in general are affected by high dropout rates \cite{lahtinen2005study}, we see providing students with understandable and useful feedback as crucial for their long-term motivation and as an important requirement of our application.

##### Scalability

As \moocs are aimed at unlimited numbers of participants, they need to be inherently scalable \cite{vihavainen2012multi}. In our specific use case, many students must be able to write and execute code in parallel. Moreover, a certain level of responsiveness is required in order to achieve a satisfying \gls{ux} \cite{ben2013moocs}. Therefore, \tool should follow a code execution approach that provides fast feedback and that scales for the number of users to be expected in a \mooc.

These scalability requirements also apply to assessment. As discussed in Section \ref{section:assessment1}, huge enrollment numbers in \moocs make manual feedback and grading impossible. Instead, \tool should provide a scalable assessment approach that fits the needs of large-scale education.

##### Security

Server-side execution of student-written programs implies that arbitrary code is executed within the boundaries of an e-learning system. This constitutes a considerable risk. Faulty student programs could excessively consume server resources; intendedly malicious programs could try to cause damage or obtain unauthorized access. In fact, automated assessment systems that are integrated into \glspl{lms} are considered a tempting target for attackers \cite{ihantola2010review}.

Due to these risks, providing a secured execution environment for running students’ programs is regarded to be an essential requirement for automated assessment systems that employ dynamic evaluation techniques \cite{ala2005survey}. \tool should provide means for the sandboxed execution of learners’ code that guarantee that untrusted code can neither harm the platform nor influence other learners’ code submissions.

##### Interoperability

We believe that educational programming platforms are more widely adopted if they can be integrated into existent e-learning infrastructures easily. Therefore, our tool should be interoperable with existing e-learning systems, such as \glspl{lms} and \mooc platforms, including openHPI.

In order to extend their courses’ contents with practical programming tasks, instructors should be able to prepare assignments on the \tool platform and embed them into their courses. Learners, on the other hand, should be able to solve these assignments in a transparent manner, without the need for registration.
This chapter proposes future work. While \tool essentially fulfills the requirements stated in Section \ref{section:requirements}, we have identified several areas for enhancement.

##### Scalability

Although our application follows scalable approaches towards code execution and assessment, the scalability evaluation (see Section \ref{section:scalability}) revealed that Docker-based code execution does not scale within the scope of \tool. In order to enable the usage of the application in a large-scale e-learning environment, such as a \mooc, this limitation has to be addressed.

##### Elasticity

The application’s current implementation is restricted to the usage of a single Docker host. Depending on the computational resources that are required to handle all learners’ requests, this might be a stand-alone server or the same one that the web application is running on. As a consequence, in order to minimize the amount of idle resources, the server’s dimensions have to be tailored to an average workload.

However, due to the fact that students tend to hand in their submissions just in time to meet deadlines, \moocs have to face the technical challenge of significant load peaks shortly before those deadlines \cite{higgins2003coursemarker,staubitz2014lightweight,vihavainen2012multi,willems2014motivating}. Consequently, third-party tools to be used in \moocs, such as \tool, have to consider high-demand periods, too.

As suggested by Neuhaus et al\. \cite{neuhaus2014platform}, a hybrid Cloud setup can provide an appropriate infrastructure for the varying workloads in a \mooc. Private Cloud resources are provided for handling an average workload. In addition, public Cloud resources can be utilized to handle workload peaks. In order to meet the elasticity demands of \moocs, \tool might incorporate this approach.

##### Usability Evaluation

Within the scope of this work, we were not able to evaluate the usability of our application, which has been designed with the needs of novice programmers in mind. While we believe that \tool provides a simple but sound programming environment, which supports beginners in their effort to learn programming and
whose capabilities equal or exceed those of comparable programming tools, we see a usability evaluation involving beginning programmers as an important next step.

##### Assignment Variation

Since automatic evaluation systems such as \tool automate execution and assessment of programming assignments, automated variation of assignments is a natural extension. Assignment variation can provide each learner with a different version of a programming task for the purpose of discouraging plagiarism and encouraging natural cooperation in solving problems \cite{malmi2002experiences,willems2013introducing}. Furthermore, variable assignments might be used to enable parameterized exercises that are slightly different after every submission attempt and therefore cannot be solved using mindless trial-and-error approaches \cite{ihantola2010review}.

Since \tool does not impose a certain exercise structure but provides flexibility in terms of code execution and assessment, variable code skeletons, tests, and instructions might be realized with moderate effort.

##### Program Input

At this moment in time, \tool does neither provide means for supplying command-line arguments to a student-written program nor for writing to its standard input stream. However, user-defined program input might be required for certain programming assignments. Examples include applications that accept command-line options, applications that are controlled by keyboard, and applications that require \gls{cli} input.

In order to enable programming assignments like these, \tool should be extended to support supplying programs with command-line arguments before execution and with user input during execution. For this purpose, the currently unidirectional output stream between a Docker container and the web-based development environment might be replaced by a bidirectional WebSocket \cite{grigorik2013high} connection.

##### Collaborative Programming

On-campus programming courses typically involve collaborative group projects. Besides teaching cooperation, collaborative programming practices can benefit the learning process. Students may understand concepts better when explained by a peer. At the same time, the explaining learner can foster her own understanding of the topic. Not only fellow students who are enrolled into the same course can cooperate, but also former course participants might be willing to volunteer as mentors \cite{staubitz2014supporting}.

Pair programming is an established software development practice that involves two programmers working together at a single workstation. Compared to developers working solo, pair programming is known to yield higher quality software in less time \cite{williams2000strengthening}. Likewise, student pair programmers are reported to work more autonomous and to perform better than their fellow students working alone \cite{nagappan2003improving}.

\tool does not support collaboration yet. However, we think that enabling collaborative programming is a meaningful objective. Remote cooperation on programming assignments could be provided by means of universal collaboration solutions, such as TogetherJS\foo{https://togetherjs.com/}, Ace-specific collaboration solutions, such as Firepad\foo{http://www.firepad.io/}, or real-time communication features, for instance based on WebRTC\foo{http://www.webrtc.org/}.

##### Auxiliary Resources

In order to compensate for the missing face-to-face instructor involvement that is inherent in \moocs, \tool provides help resources that assist students in using the platform and in understanding the characteristics of specific execution environments. Moreover, assessment and hints provide learners with feedback regarding their problem-solving strategies.

The auxiliary resources provided by \tool could be extended by integrating documentation for programming languages and frameworks into the development environment. Furthermore, e-learning applications usually offer groups or forums where learners can exchange their experiences. Such a dedicated group or forum might be made accessible from \tool by providing its \gls{url} in the form of a custom \gls{lti} launch parameter.

##### Hybrid Assessment

Currently, \tool’s scalable assessment approach is solely based on evaluating a submission’s completeness and correctness according to the exercise specification. However, a combination of multiple assessment techniques is known to increase the quality of assessment \cite{pieterse2013automated}. Since \tool facilitates the implementation of different assessment strategies, a combination of multiple approaches should be investigated.

As discussed in Section \ref{subsection:automatic-assessment}, exposing students to \gls{tdd} at an early stage can teach them to appreciate its value and help them to become better programmers. \tool already supports the execution of tests using various testing frameworks, both implicitly as part of assessment and explicitly on behalf of learners. Based on the present capabilities, strategies for involving testing into the grading process should be examined.

Section \ref{section:assessment1} presented and compared scalable assessment strategies. Automated assessment can provide instant feedback and enable an iterative development process. In contrast, peer assessment is typically applicable only after assignment completion, but it can provide feedback in greater depth. Moreover, it allows students to practice code reviews and gain insights into their peers’ problem-solving strategies. In order to bring both assessment approaches’ advantages together, it might be worthwhile to combine the current grading method with peer assessment.

##### Error Aggregation

As discussed in Section \ref{section:hint-generation2}, errors that occur during the execution of students’ code are logged to the database in order to provide teachers with a guideline to identify the most common mistakes that their students make. Based on their insights, teachers can provide specific hints for these mistakes.

Currently, similar errors are aggregated based on identical error messages. This approach can provide some insights with simple methods, but it is limited to aggregating errors messages that contain the same context-specific identifiers, such as filenames, variable names, and types. In order to allow instructors to identify common misconceptions regardless of insignificant textual differences, more sophisticated aggregation techniques, for instance based on text similarity or keyword occurrence, should be implemented in the future.
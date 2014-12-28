## Interoperability {#section:interoperability1}

Instead of designing \tool as a proprietary component for a single e-learning platform, such as openHPI, or adding course management features to its scope, we decided to build a lean stand-alone application that is interoperable with existent e-learning systems. This approach enables the use of \tool in conjunction with established \glspl{lms} and \mooc platforms, as well as in various scenarios, such as on-campus classes, \glspl{spoc} \cite{fox2014software}, and \moocs.

Providing tools such as \tool as embeddable services matches the requirements of mainstream \glspl{lms}. Such systems are regarded to be relatively mature and stable applications that are maintained rather conservatively. They favor stability and reliability over flexibility and innovation \cite{severance2010ims}. Therefore, a service-oriented approach based on \glspl{lms} implementing essential core functionality for course and user management, and external tools providing special-purpose functionality to instructors and learners allows a trade-off between stability and innovation.

### Learning Tools Interoperability

In order to provide interoperability with e-learning systems in a standardized fashion, we chose to support \gls{lti} \cite{severance2010ims}, an established interoperability standard in the area of e-learning applications. In this way, \tool is interoperable with a wide range of applications that are compliant to the same standard. These applications include the popular open-source \glspl{lms} Canvas\foo{https://www.canvas.net/}, Moodle\foo{https://moodle.org/}, and Sakai\foo{https://sakaiproject.org/}, as well as the \mooc platforms Coursera, edX, and openHPI.

\Gls{lti} is a specification developed by the IMS Global Learning Consortium\foo{http://www.imsglobal.org/}. It is aimed at establishing a standard for integrating remote content and third-party services into e-learning applications. In \gls{lti} lingo, these third-party services are called tools. Tools are hosted and supplied by so-called tool providers. E-learning applications that utilize tools are referred to as tool consumers.

\Gls{lti} standardizes the protocols between tool providers and tool consumers, allowing external services to function like native parts of an \gls{lms} or a \mooc platform. To provide a seamless learning experience and to blur the boundaries between third-party tools and their host applications, tools are often embedded using inline frames. Alternatively, due to the limited space in inline frames, a stand-alone window might be more favorable for embedding more complex tools such as \tool.

##### LTI 1.1.1

\tool implements the \gls{lti} specification in version 1.1.1\foo{http://www.imsglobal.org/lti/v1p1p1/ltiIMGv1p1p1.html}. It covers the following mechanisms for interaction between tool providers and tool consumers:

- The provisioning and installation of external tools in e-learning applications.

- A tool launch protocol for sending a tool consumer’s user to a tool provider while securely providing user identity, user role, and course context.

- Runtime web services that allow tool providers to create, retrieve, and delete results for users.

\tool uses these capabilities in order to provide its services to trusted consumer applications, to receive user information regarding learners who start a programming session, and to send learners’ results back to their consumer applications.

##### LTI 2.0

At the beginning of 2014, a new version of the \gls{lti} standard has been finalized. \gls{lti} version 2.0\foo{http://www.imsglobal.org/lti/ltiv2p0/ltiIMGv2p0.html} aims at providing an industrial-strength standard and enabling more sophisticated and deeper integrations \cite{abel2014lti}. However, since the new standard has only recently been finalized and is not supported by many e-learning systems yet, we chose to rely on \gls{lti} 1.1.1 for the time being. Moreover, the integration features offered by this version are sufficient for \tool’s requirements. Nevertheless, as soon as version 2.0 becomes more widely adopted, it might be beneficial to support both versions of \gls{lti}.
## Web-based Applications {#section:web-based-applications}

Within the last decades, the \gls{www} has become a platform for full-fledged applications that provide desktop-like \gls{ux}. The trend towards web-based applications is driven by the strongly evolved capabilities of web technologies and by the advantages that web-based delivery can offer application producers and users.

Web applications entail a set of inherent benefits. Given Internet connectivity, web-based applications are globally accessible on any device without prior installation and configuration. They can also be maintained and updated remotely at minimal cost. By using a web browser as execution platform, web applications are virtually independent of clients’ system configurations. Apart from considering browser compatibility issues, a single codebase is sufficient for cross-platform delivery. The practically homogeneous software environment provided by web applications can also reduce the frequency of user support.

### Web-based Development Tools {#section:web-based-development-tools}

Not only end-user applications are affected by the trend towards web-based delivery, but also development tools find their way into the \gls{www}. These tools are often based on embeddable JavaScript code editors, such as Ace\foo{http://ace.c9.io/} and CodeMirror\foo{http://codemirror.net/}, which offer rich code editing capabilities that are comparable to those provided by native desktop editors, such as TextMate\foo{http://macromates.com/} and Sublime Text\foo{http://www.sublimetext.com/}.

#### Educational Tools

When attempting to start programming, novices may be hindered by the difficulties involved in installing and using the necessary tools \cite{truong2005learning}. The installation-free availability and ease of use of web-based applications make them a predestined means for providing development tools to beginners.

As briefly introduced in Section \ref{section:motivation}, state-of-the-art online programming courses teach programming with a strong focus on practical exercises. These courses facilitate the entry into programming by offering web-based development environments that allow solving programming problems within the web browser. Moreover, the employed tools usually provide step-by-step instructions and a compelling \gls{ux}.

Similarly, sites such as Codewars\foo{http://www.codewars.com/} and CodingBat\foo{http://codingbat.com/} supply collections of practical programming problems to be solved in the web browser. These tools do not provide a course framework, but they can support novices on their way to mastery by offering an engaging opportunity to practice.

Educational programming games are designed to maximize the appeal of learning to program. Learners’ motivation is raised by using inciting game elements, such as increasingly challenging levels, scores, and leaderboards. CodeHunt\foo{https://www.codehunt.com/} \cite{tillmann2014codehunt} is a web-based coding game, aimed at teaching programming at scale. It challenges students to complete skeletal methods, given in either Java or C\#, so that they satisfy a hidden specification, which is only given by \gls{io} pairs. Similarly, Xiao and Miller \cite{xiao2014multiplayer} describe a many-player online programming game that is aimed at teaching novice \cs students best practices for collaborative programming in large software projects.

#### Impromptu Development Tools

Even though websites such as CodePen\foo{http://codepen.io/}, jsFiddle, and repl.it\foo{http://repl.it/} have no primary educational objective, they provide developers with in-browser programming environments for impromptu development and execution of short programs. Such platforms’ use cases include trying out libraries, constructing minimal programs for troubleshooting, and sharing code snippets.

#### Integrated Development Environments

Full-featured web-based \glspl{ide} are mentioned in research \cite{aho2011designing,goldman2011real,wang2014educational,wu2011ceclipse}, available as open-source software, and provided as hosted solutions, for example by Cloud9\foo{https://c9.io/}, Codio\foo{https://codio.com/}, and Nitrous.IO\foo{https://www.nitrous.io/}.

Web-based \glspl{ide} usually make use of traditional desktop \gls{ui} patterns, such as menu bars, file trees, content tabs, context menus, and drag-and-drop operations. Besides sophisticated code editing capabilities, such applications’ features may include customizability, project management, version management, and full Linux environments for building and executing applications. Since computationally intensive tasks are performed on a remote server, low-end \glspl{pc} and mobile devices can be used as development machines.

Web-based \glspl{ide} often facilitate the deployment of applications to infrastructures supplied by \gls{paas} providers, such as Google App Engine\foo{https://appengine.google.com/}, Heroku\foo{https://www.heroku.com/}, and Microsoft Azure\foo{http://azure.microsoft.com/}. Therefore, anybody with modest software development skills is able to deploy applications to the Cloud with small effort and low budget \cite{aho2011designing}.

Another feature that is predestined for web-based \glspl{ide} is collaborative editing, as known from Etherpad\foo{http://etherpad.org/} and Google Docs\foo{https://docs.google.com}. Multiple developers who are working at the same time are provided with a consistent view of a project since they receive real-time updates of their collaborators’ changes. Collaborative coding facilitates side-by-side pair programming, benefits communication and team knowledge sharing, and may increase productivity and software quality \cite{goldman2011real}.
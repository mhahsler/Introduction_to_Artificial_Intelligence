<!-- #region -->
# Chapter 7-9: Knowledge-based Agents

## Logical Agents
Knowledge-based agents typically store facts using logic. First-order logic can be expressed using
the logic programming language [Prolog](https://en.wikipedia.org/wiki/Prolog). Here are two online examples using SWI-Prolog:

* [A Simple Prolog Knowledge Base.](https://swish.swi-prolog.org/example/kb.pl)
* [The n-Queens Problem as a Logic Problem.](https://swish.swi-prolog.org/example/queens.pl)
* [Simple Prolog Example for an Agent](https://mhahsler.github.io/Introduction_to_Artificial_Intelligence/Knowledge-based/example.pl)

Python provides several modules for logic and symbolic mathematics. Here is a short primer on [logic programming with Python](https://www.tutorialspoint.com/artificial_intelligence_with_python/artificial_intelligence_with_python_logic_programming.htm).


## Large Language Models
Large language models (LLMs) can be used as knowledge-based agents that work with natural language rather than logic. They can be used via an API or run locally. Important tasks include [prompt engineering](https://www.kdnuggets.com/a-gentle-introduction-to-context-engineering-in-llms) and [context engineering](https://www.kdnuggets.com/a-gentle-introduction-to-context-engineering-in-llms).


Example:
* [Running LLMs locally.](https://mhahsler.github.io/Introduction_to_Artificial_Intelligence/Knowledge-based/LLM.ipynb)
* [Using Generative AI in Colab (without an API key)](https://colab.research.google.com/github/googlecolab/colabtools/blob/main/notebooks/Getting_started_with_google_colab_ai.ipynb)


Libraries and Prompting:
* [OpenAI Python API Library.](https://github.com/openai/openai-python)
* [Hugging Face](https://huggingface.co/) provides a large collection of downloadable pretrained LLMs.
* [Prompt engineering guide](https://developers.openai.com/api/docs/guides/prompt-engineering) from OpenAI.
* Textbook: [Speech and Language Processing](https://web.stanford.edu/~jurafsky/slp3/) by Dan Jurafsky and James H. Martin. Part I contains an excellent introduction to language models, transformers, and large language models.


## Agentic AI
An agentic AI solution uses a set of specially prompted LLM calls. It may involve any of the following:

  - Multiple LLM calls
  - LLMs can use tools (browse the web, access files, etc.) to interact with an environment.
  - A planner coordinates the activities of the agents. It may use one of these approaches:

    - A developer-defined workflow using "prompt chaining" and feedback between LLMs.
    - An LLM that plans its own tasks (acting as an autonomous agent, hence the name agentic AI).

Video:
* [Introduction to Agentic AI with Coding Examples](https://youtu.be/LSk5KaEGVk4) ([Code repository](https://github.com/ed-donner/action))

Articles:
* [Components of A Coding Agent](https://magazine.sebastianraschka.com/p/components-of-a-coding-agent)

Tools:
* [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/): native support for function calling, retrieval, and tool orchestration for the OpenAI ecosystem.
* [CrewAI](https://github.com/crewAIInc/crewAI): orchestrate multiple specialized AI agents working collaboratively.
* [LangGraph](https://github.com/langchain-ai/langgraph): a low-level LLM orchestration framework for building structured, reproducible agent pipelines.
* [Model Context Protocol (MCP)](https://github.com/modelcontextprotocol): An open protocol that enables seamless integration between LLM applications and external data sources and tools.


## License
&copy; 2025 [Michael Hahsler](https://michael.hahsler.net). 
All code and documents in this repository are provided under [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) License.](https://creativecommons.org/licenses/by-sa/4.0/)

![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/3.0/88x31.png)
<!-- #endregion -->

<!-- #region -->
# HOWTO Setup the Used Tools

## Installing Python and Jupyter Notebook

To work on assignments, you can use one of several environments: 
* Use the online service [Google CoLab](https://colab.research.google.com). No additional installations are necessary.
* Install Visual Studio Code. It will prompt you to install all needed software when you open a notebook file.

## Using Google Colab

You can experiment with the code online without installation using 
[Google CoLab](https://colab.research.google.com/github/mhahsler/Introduction_to_Artificial_Intelligence/). If additional packages are needed then
I will provide a code block with a commented out `pip install` instruction you can use.

In Colab you need to save notebooks and any additional files you use on GoogleDrive to work with them. 
For this you need to mount your google dive and change to the correct directory by uncommenting the following lines and running the code block.
You can manually mount your Google drive in Colab or add the following code block to your notebook:

```Python
from google.colab import drive
import os

drive.mount('/content/drive')
os.chdir('/content/drive/My Drive/Colab Notebooks/')
```

## Setting up the Environment with Conda

This uses conda to manage virtual environments. 

1. Install [Miniconda](https://www.anaconda.com/docs/getting-started/installation). 
2. Download [environment.yml](../environment.yml)
3. From the VS Code terminal, run these commands from the repository root:

   ```bash
   conda env create -f environment.yml
   conda activate CS7320-AI
   ```

Then configure VS Code:

  1. Install Microsoft’s Python and Jupyter extensions.
  2. Press Ctrl+Shift+P.
  3. Select Python: Select Interpreter.
  4. Choose CS7320-AI.
  5. For a notebook, click Select Kernel in the upper-right and choose CS7320-AI. 
     If you cannot find it then you probably need to restart VS Code.


Optional packages can be added afterward:

* Gymnasium and Lunar Lander
  `conda env update -n CS7320-AI -f environments/gymnasium.yml`
* Local LLM examples
  `conda env update -n CS7320-AI -f environments/llm.yml`

## Learning Python and Jupyter Notebook

If you are not familiar with Python, then you should work through one of the many Python tutorials (e.g., [this tutorial](https://www.w3schools.com/python/default.asp)) to learn the basics about Python and the packages `numpy` and `pandas`. Some code examples that help with the assignments are available [here](.).

How to use Jupyter notebooks is covered in many online tutorials like the [Jupyter notebook tutorial](https://www.dataquest.io/blog/jupyter-notebook-tutorial/).


## License
All code and documents in this repository are provided under [Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) License.](https://creativecommons.org/licenses/by-sa/4.0/)

![CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/3.0/88x31.png)
<!-- #endregion -->

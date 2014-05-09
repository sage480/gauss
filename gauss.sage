class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return "I'm crazy"
    def __neg__(self):
        """
        INPUT: 
            GaussianRational

        Returns:
          Negative GaussianRational object
          
          Examples:
          
          sage:a = Gauss(4,-5); -a
          -4+5i
        
        """
        return Gauss(self.real * -1, self.imag * -1)
    
    



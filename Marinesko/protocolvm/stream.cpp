#include <iostream>
#include <cctype>

#include "stream.h"

Stream::Stream(std::ifstream *file)
{
	this->file = file;	
	SetPosition(0);
	SeekNextToken();
}

Stream::~Stream()
{
	file->close();
	delete file;
}

char Stream::NextChar()
{	
	if (!Eof())
	{
		position += 1;
		return file->get();	
	}	
	return 0;
}

char Stream::NextNonWhitespace()
{	
	auto next = NextChar();
	while (IsWhitespace(next))
	{
		next = NextChar();
	}	
	return next;
}

void Stream::Back()
{
	auto position = GetPosition();	
	if (position > 0)
	{
		SetPosition(position - 1);
	}	
}

void Stream::SeekNextToken()
{
	if (NextNonWhitespace() != 0)
	{
		Back();
	}
}

bool Stream::Eof()
{
	return file->eof();
}

void Stream::PushPosition()
{	
    positionStack.push_back(GetPosition());	
}

void Stream::DropPosition()
{
	if (positionStack.size() > 0)
	{
		auto position = positionStack.back();
		positionStack.pop_back();		
	}
	else
    {
        throw("Stack underflow");
    }
}

void Stream::PopPosition()
{
    if (positionStack.size() > 0)
    {		
		auto position = positionStack.back();
		positionStack.pop_back();
        SetPosition(position);				
    }
    else
    {
        throw("Stack underflow");
    }
}

void Stream::PrintStack()
{
	std::cout << "[";
	for (auto i = 0u; i < positionStack.size(); i++)
	{
		std::cout << " " << positionStack[i] << " ";
	}
	std::cout << "]" << std::endl;
}

bool Stream::IsWhitespace(char c)
{
	return c == ' ' || c == '\t' || c == '\n' || c == '\r';
}

int Stream::GetPosition()
{		
	return position;	
}

void Stream::SetPosition(int position)
{		
	this->position = position;
	file->seekg(position, std::ifstream::beg);	
}

import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Arpit Purwar/i);

  expect(linkElement).toBeInTheDocument();
});

